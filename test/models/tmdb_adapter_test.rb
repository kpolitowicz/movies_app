require "json"

require "test_helper"

class TmdbAdapterTest < ActiveSupport::TestCase
  class TmdbAdapterMock
    attr_reader :last_query

    def get(uri)
      @last_query = uri.to_s

      <<~FAKE_RESPONSE
      {
        "page":1,
        "results":[]
      }
      FAKE_RESPONSE
    end
  end

  test "fires a search request withg the given query" do
    provider_mock = TmdbAdapterMock.new
    response = TmdbAdapter.new(provider_mock).search("Batman")

    expected = "https://api.themoviedb.org/3/search/movie?query=Batman&api_key="
    assert_equal expected, provider_mock.last_query
  end

  test "returns external api response" do
    provider_mock = TmdbAdapterMock.new
    response = TmdbAdapter.new(provider_mock).search("Batman")

    expected = {"page" => 1, "results" => []}
    assert_equal expected, JSON.parse(response)
  end
end

