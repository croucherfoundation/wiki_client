require_relative "wiki_client/version"
require 'httparty'

module WikiClient
  class Error < StandardError; end
  class << self
    def reindex_document(params = {})
      response = HTTParty.get(generate_wiki_url('/api/reindex_document'), body: params)

      if response.code == 200
        puts 'Reindex request sent successfully.'
      else
        puts 'Error sending reindex request.'
      end
    end


    private
    def wiki_url(path, params={})
      uri = URI.join(wiki_host, path.sub(/^\//, ''))
      uri.query = params.to_query if params.any?
      uri.to_s
    end

    def generate_wiki_url(route_path, params = {})
      uri = URI.join(wiki_host, route_path.sub(/^\//, ''))
      uri.query = params.to_query if params.any?
      uri.to_s
    end

    def wiki_host
      ENV['WIKI_URL']
    end
  end
end
