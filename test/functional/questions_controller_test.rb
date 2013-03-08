require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get vote_up" do
    get :vote_up
    assert_response :success
  end

end
