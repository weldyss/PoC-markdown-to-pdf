require 'prawn'

class CreatePdf
  include Prawn::View

  def initialize(text_to_print)
    @text_to_print = text_to_print
  end

  def document
    @document ||= Prawn::Document.new(page_size: 'A4', margin: 30)
  end

  def print
    font('Helvetica') do
      text(@text_to_print)
    end
  end
end
