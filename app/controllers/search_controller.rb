require "net/http"

class SearchController < ApplicationController
  # GET /search
  def index
    # TODO:
    # - extract TMDB adapter to handle external call and tresponse
    # - write test for controller response text
    # - write tests fro the adapter
    # - maybe sanitize params[:query]
    # - move TMDB_API_KEY to app secrets
    # - allow user to reqeust next pages of search results
    external_url = "https://api.themoviedb.org/3/search/movie?query=#{params[:query]}&api_key=#{ENV["TMDB_API_KEY"]}"
    response = Net::HTTP.get(URI(external_url))
    render json: response
  end
end
