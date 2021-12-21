class ClinicalController < ContentController
  def index
    @body = get_content_body(Contentful::Clinical.first)
  end
end
