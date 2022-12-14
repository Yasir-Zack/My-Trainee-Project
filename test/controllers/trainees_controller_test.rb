require 'test_helper'

class TraineesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trainee = trainees(:one)
  end

  test "should get index" do
    get trainees_url
    assert_response :success
  end

  test "should get new" do
    get new_trainee_url
    assert_response :success
  end

  test "should create trainee" do
    assert_difference('Trainee.count') do
      post trainees_url, params: { trainee: { email: @trainee.email, first_name: @trainee.first_name, last_name: @trainee.last_name, phone: @trainee.phone, twitter: @trainee.twitter } }
    end

    assert_redirected_to trainee_url(Trainee.last)
  end

  test "should show trainee" do
    get trainee_url(@trainee)
    assert_response :success
  end

  test "should get edit" do
    get edit_trainee_url(@trainee)
    assert_response :success
  end

  test "should update trainee" do
    patch trainee_url(@trainee), params: { trainee: { email: @trainee.email, first_name: @trainee.first_name, last_name: @trainee.last_name, phone: @trainee.phone, twitter: @trainee.twitter } }
    assert_redirected_to trainee_url(@trainee)
  end

  test "should destroy trainee" do
    assert_difference('Trainee.count', -1) do
      delete trainee_url(@trainee)
    end

    assert_redirected_to trainees_url
  end
end
