require 'test_helper'

class ResultsControllerTest < ActionController::TestCase
  test "should get displayChart" do
    get :displayChart
    assert_response :success
  end

end
