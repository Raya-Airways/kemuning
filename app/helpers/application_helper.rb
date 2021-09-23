module ApplicationHelper


  def action_link(method, object, prefix=0 )
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


end
