require "test_helper"

class GithubControllerTest < ActionDispatch::IntegrationTest
  test "should get analysis" do
    get github_analysis_url
    assert_response :success
  end
end
