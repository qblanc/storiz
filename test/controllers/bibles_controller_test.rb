require 'test_helper'

class BiblesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bibles_show_url
    assert_response :success
  end

end
