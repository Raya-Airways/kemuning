class Position < ApplicationRecord

  before_save :set_parent

  validates :position_code, uniqueness: true

  def set_parent
    self.parent_id = position_code.to_s.chop.to_i
  end

end
