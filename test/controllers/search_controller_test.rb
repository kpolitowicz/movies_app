require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    adapter = double(search: "response")
    allow(TmdbAdapter).to receive(:new).and_return(adapter)

    get search_url, as: :json
    assert_response :success
    assert_equal "response", response.body
  end
end
