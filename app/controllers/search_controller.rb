
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


    render json: TmdbAdapter.new.search(params[:query])
  end
end
