require 'action_view'
require 'action_view/helpers'

class ContentController < ApplicationController

  def get_content_body (content)
    if content.body
      RichTextRenderer::Renderer.new(
          # 'heading-2' => ContentfulRenderers::HeadingTwoRenderer
      ).render(content.body)
    else
      ''
    end
  end
end
