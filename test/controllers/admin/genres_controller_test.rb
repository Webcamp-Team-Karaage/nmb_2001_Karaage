require 'test_helper'

class Admin::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get products" do
    get admin_genres_products_url
    assert_response :success
  end

end
