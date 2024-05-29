require 'minitest/autorun'
require_relative '../lib/create_html'

class CreateHtmlTest < Minitest::Test
  def test_instantiate_class
    assert_equal Redcarpet::Markdown, CreateHtml.convert.class
  end
end
