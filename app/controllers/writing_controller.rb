require 'action_view'
require 'action_view/helpers'

class WritingController < ContentController

  def list
    @writings = Contentful::Writing.all.load
  end

  def show
    @writing = Contentful::Writing.find_by(uri: params['writing_uri']).first
    @writing_body = get_content_body(@writing)
  end
end
