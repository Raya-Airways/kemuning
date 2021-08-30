class PublishTasks < Prawn::Document

  def initialize(staffs, view)
    super({top_margin: 50, page_size: 'A4', page_layout: :landscape })
    @staffs = staffs
    @view = view

    text "Business Process", :align => :right, :size => 14, :style => :bold
    move_down 20
    main_content
  end

  def main_content
    @staffs.map do | staff |
      position_code = staff.combo_code
      staff_name = staff.name
      text "#{position_code}   #{staff_name}", :color => "2F5496", :size => 20
      move_down 5
      text "Mission Statement", :color => "2F5496", :size => 16
      move_down 5
      text "#{staff.mission}"
      move_down 20
      task_list(staff)
      move_down 20
    end
  end

  def task_list(staff)
    @tasks=Task.where(position_id: staff.id)
    text "Subprocess description", :color => "2F5496", :size => 16
    move_down 5
    text "The #{staff.name} unit maintains the following processes."
    @tasks.map do | task |
      text "  •   #{task.title}"
    end
    move_down 14
    text "Subprocesses", :color => "2F5496", :size => 16

    @tasks.map do | task |
      events = Event.where(task_id: task)
      move_down 5
      text "#{task.code} #{task.title}", :color => "2F5496", :size => 13
      move_down 5
      text "Subprocess Description"
      move_down 5
      text task.description, :size => 10
      bpmn_svg
      event_table(events)
      document_list(events)
    end
  end

  def bpmn_svg
    move_down 10
    text "Process Diagram"
    move_down 5
  end

  def event_table(events)
    move_down 10
    text "Event Description"
    move_down 5
    table(event_list_table(events), header: true) do
      self.cell_style = { size: 9 }
      self.width = 770
      self.row(0).font_style = :bold
      columns(0).width = 55
      columns(0).align = :center
      columns(1).width = 110
      columns(2).width = 110
    end
  end

  def event_list_table(events)
    header = [["Sequence", "Owner", "Title", "Description"]]
    header += line_item_rows(events)
  end

  def line_item_rows(events)
    rows = []
    events.map do | event |
      rows << [event.sequence, event.position ? event.position.name : event.owner, event.title, event.description ]
    end
    rows
  end

  def document_list(events)
    move_down 10
    text "Documents"
    move_down 5
    documents = ActiveStorage::Attachment.where(name: "document").where(record_id: events)
    documents.map do | document |
      text "  •   #{document.filename}"
    end

  end


end
