class Event < ApplicationRecord

  belongs_to :task
  belongs_to :position, optional: true

  validates :sequence, :task_id, presence: true

  has_one_attached :document


end
