class TrainingController < ContentController
  def index
    @body = get_content_body(Contentful::Training.first)
  end
end
