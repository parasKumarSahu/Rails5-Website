require 'test_helper'

class ManufacturingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manufacturing = manufacturings(:one)
  end

  test "should get index" do
    get manufacturings_url
    assert_response :success
  end

  test "should get new" do
    get new_manufacturing_url
    assert_response :success
  end

  test "should create manufacturing" do
    assert_difference('Manufacturing.count') do
      post manufacturings_url, params: { manufacturing: { inputs: @manufacturing.inputs, process: @manufacturing.process, product_id: @manufacturing.product_id } }
    end

    assert_redirected_to manufacturing_url(Manufacturing.last)
  end

  test "should show manufacturing" do
    get manufacturing_url(@manufacturing)
    assert_response :success
  end

  test "should get edit" do
    get edit_manufacturing_url(@manufacturing)
    assert_response :success
  end

  test "should update manufacturing" do
    patch manufacturing_url(@manufacturing), params: { manufacturing: { inputs: @manufacturing.inputs, process: @manufacturing.process, product_id: @manufacturing.product_id } }
    assert_redirected_to manufacturing_url(@manufacturing)
  end

  test "should destroy manufacturing" do
    assert_difference('Manufacturing.count', -1) do
      delete manufacturing_url(@manufacturing)
    end

    assert_redirected_to manufacturings_url
  end
end
