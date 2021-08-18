class Task < ApplicationRecord

  has_rich_text :notes
  has_rich_text :recommendations
  has_rich_text :risks
  has_rich_text :findings
  has_one_attached :bpmn
  has_one_attached :dmn
  has_many_attached :documents
end
