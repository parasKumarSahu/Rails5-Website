require 'test_helper'

class DecorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @decor = decors(:one)
  end

  test "should get index" do
    get decors_url
    assert_response :success
  end

  test "should get new" do
    get new_decor_url
    assert_response :success
  end

  test "should create decor" do
    assert_difference('Decor.count') do
      post decors_url, params: { decor: { image_path: @decor.image_path, image_size: @decor.image_size, image_type: @decor.image_type, name: @decor.name, number: @decor.number, type: @decor.type } }
    end

    assert_redirected_to decor_url(Decor.last)
  end

  test "should show decor" do
    get decor_url(@decor)
    assert_response :success
  end

  test "should get edit" do
    get edit_decor_url(@decor)
    assert_response :success
  end

  test "should update decor" do
    patch decor_url(@decor), params: { decor: { image_path: @decor.image_path, image_size: @decor.image_size, image_type: @decor.image_type, name: @decor.name, number: @decor.number, type: @decor.type } }
    assert_redirected_to decor_url(@decor)
  end

  test "should destroy decor" do
    assert_difference('Decor.count', -1) do
      delete decor_url(@decor)
    end

    assert_redirected_to decors_url
  end
end
