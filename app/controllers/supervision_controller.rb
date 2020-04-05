class SupervisionController < ContentController
  def index
    @body = get_content_body(Contentful::Supervision.first)
  end
end
