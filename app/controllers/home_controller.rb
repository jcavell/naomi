class HomeController < ContentController
  def index
    @body = get_content_body(Contentful::Home.first)
  end
end
