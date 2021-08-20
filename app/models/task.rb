class Task < ApplicationRecord

  validates :code, uniqueness: true

  has_many :events
  accepts_nested_attributes_for :events

  has_rich_text :notes
  has_rich_text :recommendations
  has_rich_text :risks
  has_rich_text :findings
  has_one_attached :bpmn
  has_one_attached :dmn
  has_many_attached :documents
end
