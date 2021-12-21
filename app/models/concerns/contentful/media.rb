module Contentful
  class Media < ContentfulModel::Base
    self.content_type_id = 'social'

    def link
      uri.include?('http') ? ['Read more (external link)', uri] : ['Read more', '/media/' + uri]
    end

  end
end
