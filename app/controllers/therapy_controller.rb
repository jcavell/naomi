class TherapyController < ContentController
  def index
    @body = get_content_body(Contentful::Therapy.first)
  end
end
