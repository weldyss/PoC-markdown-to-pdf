require 'minitest/autorun'
require 'redcarpet'
require_relative '../lib/handlebars_render'

class HandlebarsRenderTest < Minitest::Test
  def setup
    @variables = {
      name: 'John Doe',
      age: 30
    }
    @markdown = Redcarpet::Markdown.new(HandlebarsRender.new(@variables))
  end

  def test_render_with_variables
    text = 'Hello, {{ name }}! You are {{ age }} years old.'
    expected_html = "<p>Hello, John Doe! You are 30 years old.</p>\n"
    assert_equal expected_html, @markdown.render(text)
  end

  def test_render_without_variables
    text = 'Hello, World!'
    expected_html = "<p>Hello, World!</p>\n"
    assert_equal expected_html, @markdown.render(text)
  end

  def test_render_with_unknown_variable
    text = 'Hello, {{ unknown }}!'
    expected_html = "<p>Hello, {{ unknown }}!</p>\n"
    assert_equal expected_html, @markdown.render(text)
  end
end
