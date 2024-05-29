require 'redcarpet'

class CreateHtml
  def self.convert
    Redcarpet::Markdown.new(renderer, extensions)
  end

  class << self
    def self.renderer
      Redcarpet::Render::HTML
    end

    def self.extensions
      { with_toc_data: true, tables: true }
    end
  end
end
