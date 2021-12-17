module LinksHelper

  def set_html
    {btn: "btn btn-outline-dark btn-action",
     dataset: {toggle: "tooltip", placement: "left"}}
  end

  def link_to_action(method, object, prefix=0 )
    controller   = object.class.name.downcase
    record       = object.id
    button_class = "btn btn-outline-dark btn-action"
    title = "#{method} #{controller}".titleize
    dataset = {toggle: "tooltip", placement: "left"}
    case
    when method == "show"
      link = link_to (content_tag(:i, "", class: 'fas fa-eye fa-xs') + ""), send("#{controller}_path", {id: record}), class: button_class, data: dataset , "title"=> title
    when method == "edit"
      link = link_to (content_tag(:i, "", class: 'fas fa-pencil-alt') + ""), send("edit_#{controller}_path", {id: record}), class: button_class, data: dataset, "title"=> title
    when method == "delete"
      link = link_to (content_tag(:i, "", class: 'far fa-trash-alt') + ""), send("#{controller}_path", {id: record}), data: { confirm: 'Are you sure?' }, method: :delete, class: button_class, "title"=>title
    when method == "pdf"
      link = link_to (content_tag(:i, "", class: 'fas fa-file-pdf') + ""), send("#{prefix}_#{controller}_path", {id: record, format: "pdf"}), class: button_class, data: dataset, "title"=> title
    when method == "inspect"
      link = []
      link << controller.inspect
      link << object.class.name.downcase
    else
      ""
    end
    link
  end

  def link_to_with_params(object, icon, path, p)
    # usage object, icon: fa icon name, path: path without _path, p: params
    html = set_html
    title = path.titleize
    link_to content_tag(:i, "", class: "fas fa-#{icon} fa-xs"), send("#{path}_path", {"#{p}": object}), class: html[:btn], data: html[:dataset], "title"=> title
  end

  def link_to_with_format(object, icon, path, format)
    # usage object, icon: fa icon name, path: path without _path, p: params
    html = set_html
    title = path.titleize
    link_to content_tag(:i, "", class: "fas fa-#{icon}"), send("#{path}_path", {id: object, format: format}), class: html[:btn], data: html[:dataset], "title"=> title, target: :_blank
  end


end
