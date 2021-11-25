module ApplicationHelper

  def filename(url)
    (url.split("/").last.split("?").first).gsub("%20", " ")
  end

end
