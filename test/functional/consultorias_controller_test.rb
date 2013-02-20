require 'test_helper'

class ConsultoriasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
