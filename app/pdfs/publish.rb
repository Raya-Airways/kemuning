class Publish < Prawn::Document
  include PdfHelper

  def initialize(task, view)
    super({top_margin: 50, page_size: 'A4', page_layout: :landscape })
    @task = task
    @view = view
    footer_text = "#{task.code}: #{task.title}"
    repeat :all do
      raya_pdf_header
    end
    main_content
    repeat :all do
      raya_pdf_footer(footer_text)
    end
  end

  def main_content
    task_list
  end

  def task_list
    events = Event.where(task_id: @task).order(sequence: :asc)
    text "#{@task.code} #{@task.title}", :color => "2F5496", :size => 13
    text "Subprocess Description"
    move_down 5
    text @task.description, :size => 10
    bpmn_svg(@task)
    event_table(events)
    document_list(events)
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
    document_from_url(events)
    documents = ActiveStorage::Attachment.where(name: "document").where(record_id: events)
    documents.map do | document |
      text "  •   #{document.filename}", :size => 10
    end
  end

  def document_from_url(events)
    arr = events.pluck(:file_url)
    arr = arr.compact
    arr = arr.reject(&:empty?) unless arr.nil?
    if arr.present?
      arr = arr.map {|s| s.gsub(s, (s.split("/").last.split("?").first).gsub("%20", " ").gsub("%26", "&"))}
      arr = arr.uniq
      arr.map do | doc |
        text "  •   #{doc}", :size => 10
      end
    end
  end
end
