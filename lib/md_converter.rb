require 'redcarpet'

class MdConverter
  def self.convert
    Redcarpet::Markdown.new(renderer, extensions)
  end

  private

  def self.renderer
    Redcarpet::Render::HTML
  end

  def self.extensions
    { with_toc_data: true, tables: true }
  end
end
