class WikiDocument
  include Her::JsonApi::Model

  use_api WIKI
  collection_path "/api/documents"

  class << self
    def reindex_document(id)
      response = get("#{collection_path}/reindex", { id: id })
    end
  end

end
