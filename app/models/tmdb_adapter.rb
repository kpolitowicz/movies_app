require "net/http"

class TmdbAdapter
  class Error < StandardError ; end
  attr_reader :http_provider

  def initialize(http_provider = Net::HTTP)
    @http_provider = http_provider
  end

  def search(query)
    external_url = "https://api.themoviedb.org/3/search/movie?query=#{query}&api_key=#{ENV["TMDB_API_KEY"]}"

    http_provider.get(URI(external_url))
  end
end
