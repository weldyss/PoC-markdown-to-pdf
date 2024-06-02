class HandlebarsRender < Redcarpet::Render::HTML
  def initialize(variables = {})
    super()
    @variables = variables
  end

  def preprocess(full_document)
    # This method is called before the document is parsed
    full_document.gsub(/{{\s*(\w+)\s*}}/) do |match|
      key = $1.to_sym
      @variables[key] || match
    end
  end
end
