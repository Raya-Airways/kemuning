module TasksHelper

  def display_owner(owner)
    Position.find_by_combo_code(owner).try(:name) unless owner.blank?
  end

  def get_document_list(task)
    documents = task.events.pluck(:file_url).compact!
    documents = documents.collect { |c| [ c, c ] }
    documents = documents.map {|k, v| [k.gsub(v, (v.split("/").last.split("?").first).gsub("%20", " ")), v]}
    documents = documents.uniq {|k, v| k}
    documents
  end
end
