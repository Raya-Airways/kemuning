module TasksHelper

  def display_owner(owner)
    Position.find_by_code(owner.to_i).name unless owner.blank?
  end
end
