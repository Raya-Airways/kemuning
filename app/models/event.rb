class Event < ApplicationRecord

  before_validation :set_code
  belongs_to :task
  belongs_to :position, optional: true

  validates :sequence, :task_id, presence: true

  has_one_attached :document

  def set_code
    self.code = "#{task.code}" + "." + "#{'%02i' % sequence}"
  end

  def position_desc
    position.try(:desc)
  end

  def position_desc=(desc)
    code = desc.split(' ')[0]
    self.position = Position.find_by_combo_code(code) if code.present?
  end


end
