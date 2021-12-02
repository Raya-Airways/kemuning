module PdfHelper

  def raya_pdf_header
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

  def raya_pdf_footer(footer_text)
    bounding_box([0, 10],:width => 770,:height => 10) do
      divider
    end
    bounding_box([0, 0],:width => 280,:height => 200) do
      text "Kemuning App, Data by Raya Airways © 2021 - #{Date.today.year}", size: 9, align: :left
    end
    bounding_box([200, 0],:width => 560,:height => 200) do
      text footer_text,  size: 9, align: :right
    end
  end

  def divider
    stroke_color '000000'
    stroke do
      horizontal_rule
    end
  end
end
