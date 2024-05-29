require_relative './md_converter'
require_relative './create_pdf'

class ConvertMarkdown
  def initialize(text)
    @text = text
  end

  def convert_to_html
    markdown = MdConverter.convert

    markdown.render(@text)
  end

  def convert_to_pdf
    markdown = MdConverter.convert

    text_to_print = markdown.render(@text)

    pdf = CreatePdf.new(text_to_print)
    pdf.print
    pdf.save_as('file.pdf')
  end
end
