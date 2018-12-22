require 'test_helper'

class PerformencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performence = performences(:one)
  end

  test "should get index" do
    get performences_url
    assert_response :success
  end

  test "should get new" do
    get new_performence_url
    assert_response :success
  end

  test "should create performence" do
    assert_difference('Performence.count') do
      post performences_url, params: { performence: { features: @performence.features, maintenance: @performence.maintenance, product_id: @performence.product_id, warranty: @performence.warranty } }
    end

    assert_redirected_to performence_url(Performence.last)
  end

  test "should show performence" do
    get performence_url(@performence)
    assert_response :success
  end

  test "should get edit" do
    get edit_performence_url(@performence)
    assert_response :success
  end

  test "should update performence" do
    patch performence_url(@performence), params: { performence: { features: @performence.features, maintenance: @performence.maintenance, product_id: @performence.product_id, warranty: @performence.warranty } }
    assert_redirected_to performence_url(@performence)
  end

  test "should destroy performence" do
    assert_difference('Performence.count', -1) do
      delete performence_url(@performence)
    end

    assert_redirected_to performences_url
  end
end
