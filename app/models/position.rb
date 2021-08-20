class Position < ApplicationRecord

  before_save :set_parent

  validates :code, :name, presence: true
  validates :code, uniqueness: true

  def set_parent
    self.parent_id = code.to_s.chop.to_i
  end

end
