class Position < ApplicationRecord

  before_validation  :set_combo_code

  belongs_to :parent, class_name: "Position", optional: true

  validates :code, :name, presence: true
  validates :combo_code, uniqueness: true

  def set_combo_code
    Rails.logger.info '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    if parent_id.nil?
      self.combo_code = "#{code.to_s}"
    else
      self.combo_code = "#{parent.combo_code}" + "." + "#{code.to_s}"
    end
    Rails.logger.info '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    Rails.logger.info combo_code

  end

  def position_description
    "#{code}" + " - " + "#{name}"
  end

end
