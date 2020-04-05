module Contentful
  class Writing < ContentfulModel::Base
    self.content_type_id = 'writing'

    def link
      uri.include?('http') ? ['Read more (external link)', uri] : ['Read more', '/writing/' + uri]
    end
  end
end
