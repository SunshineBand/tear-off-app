require 'test_helper'

class FlyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flyer = flyers(:one)
  end

  test "should get index" do
    get flyers_url
    assert_response :success
  end

  test "should get new" do
    get new_flyer_url
    assert_response :success
  end

  test "should create flyer" do
    assert_difference('Flyer.count') do
      post flyers_url, params: { flyer: { category_id: @flyer.category_id, cost: @flyer.cost, date_of_event: @flyer.date_of_event, info: @flyer.info, project_id: @flyer.project_id, time: @flyer.time, title: @flyer.title, user_id: @flyer.user_id } }
    end

    assert_redirected_to flyer_url(Flyer.last)
  end

  test "should show flyer" do
    get flyer_url(@flyer)
    assert_response :success
  end

  test "should get edit" do
    get edit_flyer_url(@flyer)
    assert_response :success
  end

  test "should update flyer" do
    patch flyer_url(@flyer), params: { flyer: { category_id: @flyer.category_id, cost: @flyer.cost, date_of_event: @flyer.date_of_event, info: @flyer.info, project_id: @flyer.project_id, time: @flyer.time, title: @flyer.title, user_id: @flyer.user_id } }
    assert_redirected_to flyer_url(@flyer)
  end

  test "should destroy flyer" do
    assert_difference('Flyer.count', -1) do
      delete flyer_url(@flyer)
    end

    assert_redirected_to flyers_url
  end
end
