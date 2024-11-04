class TmdbAdapter
  def search(query)
    external_url = "https://api.themoviedb.org/3/search/movie?query=#{query}&api_key=#{ENV["TMDB_API_KEY"]}"

    Net::HTTP.get(URI(external_url))
  end
end
