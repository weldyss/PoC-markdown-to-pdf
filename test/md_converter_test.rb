require 'minitest/autorun'
require_relative '../lib/md_converter'

class MdConverterTest < Minitest::Test
  def test_instantiate_class
    assert_equal Redcarpet::Markdown, MdConverter.convert.class
  end
end
