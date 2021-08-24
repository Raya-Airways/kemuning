class Position < ApplicationRecord

  before_validation  :set_combo_code

  belongs_to :parent, class_name: "Position", optional: true

  validates :code, :name, presence: true
  validates :combo_code, uniqueness: true

  def set_combo_code
    if parent_id.nil?
      self.combo_code = "#{code.to_s}"
    else
      self.combo_code = "#{parent.combo_code}" + "." + "#{code.to_s}"
    end
  end

  def position_description
    "#{combo_code}" + " - " + "#{name}"
  end

end
