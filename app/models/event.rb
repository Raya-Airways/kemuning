class Event < ApplicationRecord

  belongs_to :task

  validates :sequence, :task_id, presence: true


end
