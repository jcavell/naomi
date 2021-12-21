require 'action_view'
require 'action_view/helpers'

class MediaController < ContentController

  def list
    @medias = Contentful::Media.all.load
  end

  def show
    @media = Contentful::Media.find_by(uri: params['media_uri']).first
    @media_body = get_content_body(@media)
  end
end
