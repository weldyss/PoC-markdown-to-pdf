require 'minitest/autorun'
require_relative '../lib/convert_markdown'

class ConvertMarkdownTest < Minitest::Test
  def setup
    @md_text = ConvertMarkdown.new('#text')
  end

  def test_return_text
    assert_equal '<h1>text</h1>', @md_text.convert_to_html.strip!
  end

  def test_return_pdf
    @md_text.convert_to_pdf

    assert File.exist?('file.pdf'), 'PDF file was not created'
    FileUtils.rm_f('file.pdf')
  end
end
