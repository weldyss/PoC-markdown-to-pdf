require 'redcarpet'

class CreateHtml
  def self.convert
    Redcarpet::Markdown.new(renderer, extensions)
  end

  class << self
    private

    def renderer
      Redcarpet::Render::HTML
    end

    def extensions
      { with_toc_data: true, tables: true }
    end
  end
end
