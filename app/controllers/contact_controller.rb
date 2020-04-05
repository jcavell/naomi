class ContactController < ContentController
  def index
    @body = get_content_body(Contentful::Contact.first)
  end
end
