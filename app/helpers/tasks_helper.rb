module TasksHelper

  def display_owner(owner)
    Position.find_by_combo_code(owner).try(:name) unless owner.blank?
  end
end
