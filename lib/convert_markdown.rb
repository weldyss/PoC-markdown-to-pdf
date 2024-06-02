require_relative 'create_html'
require_relative 'create_pdf'

class ConvertMarkdown
  def initialize(text)
    @text = text
  end

  def convert_to_html
    markdown = CreateHtml.convert

    markdown.render(@text)
  end

  def convert_to_pdf
    markdown = CreateHtml.convert

    text_to_print = markdown.render(@text)

    pdf = CreatePdf.new(text_to_print)
    pdf.print
    pdf.save_as('file.pdf')
  end
end
