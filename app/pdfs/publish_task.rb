class PublishTask < Prawn::Document

  def initialize(staff, view)
    super({top_margin: 90, page_size: 'A4', page_layout: :landscape })
    @staff = staff
    @view = view
    repeat :all do
      header
    end
    main_content
    repeat :all do
      footer
    end
  end

  def header
    bounding_box([0, 505],:width => 200,:height => 15) do
      text "Business Process", size: 12, align: :left, style: :bold
    end
    bounding_box([250, 520],:width => 280,:height => 15) do
      text "Internal Use Only", size: 12, align: :center
    end
    bounding_box([700, 530],:width => 60,:height => 45) do
      image "#{Rails.root}/public/a4logo.png", width: 60
    end
    divider
    move_down 10
  end

  def main_content
    position_code = @staff.combo_code
    staff_name = @staff.name
    move_down 10
    text "#{position_code}   #{staff_name}", :color => "2F5496", :size => 20
    move_down 5
    text "Mission Statement", :color => "2F5496", :size => 16
    move_down 5
    text "#{@staff.mission}"
    move_down 20
    task_list(@staff)
    move_down 20
    start_new_page
  end

  def footer
    bounding_box([0, 10],:width => 770,:height => 10) do
      divider
    end
    bounding_box([0, 0],:width => 280,:height => 200) do
      text "Kemuning App, Data by Raya Airways © 2021 - #{Date.today.year}", size: 9, align: :left
    end
    bounding_box([200, 0],:width => 560,:height => 200) do
      if @task
        text "#{@task.code}: #{@task.title}", size: 9, align: :right
      else
        text "#{@staff.combo_code} - #{@staff.name}",  size: 9, align: :right
      end
    end
  end

  def task_list(staff)
    @tasks=Task.where(position_id: staff.id)
    move_down 20
    text "Subprocess description", :color => "2F5496", :size => 16
    move_down 5
    text "The #{staff.name} unit maintains the following processes.", :size => 11
    @tasks.map do | task |
      @task = task
      text "  •   #{task.title}", :size => 11
    end
    move_down 14
    text "Subprocesses", :color => "2F5496", :size => 16

    @tasks.map do | task |
      events = Event.includes([:position]).where(task_id: task)
      move_down 5
      start_new_page
      text "#{task.code} #{task.title}", :color => "2F5496", :size => 13
      move_down 5
      text "Subprocess Description"
      move_down 5
      text task.description, :size => 10
      bpmn_svg(task)
      event_table(events)
      document_list(events)
    end
  end

  def bpmn_svg(task)
      move_down 10
      text "Process Diagram"
      move_down 5
      if task.png_bpmn.attached?
        #svg IO.read(ActiveStorage::Blob.service.send(:path_for, task.png_bpmn.key))
        image ActiveStorage::Blob.service.send(:path_for, task.png_bpmn.key), fit: [770, 350], position: :left
      end
    #svg IO.Read(ActiveStorage::Blob.service.send(:path_for, task.png_bpmn.key))
  end

  def event_table(events)
    move_down 10
    text "Event Description"
    move_down 5
    table(event_list_table(events), header: true) do
      self.cell_style = { size: 9 }
      self.width = 760
      self.row(0).font_style = :bold
      columns(0).width = 55
      columns(0).align = :center
      columns(1).width = 115
      columns(2).width = 115
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
      text "  •   #{document.filename}", :size => 10
    end
  end

  def divider
    stroke_color '000000'
    stroke do
      horizontal_rule
    end
  end


end
