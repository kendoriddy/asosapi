require "test_helper"

class AttendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attend = attends(:one)
  end

  test "should get index" do
    get attends_url, as: :json
    assert_response :success
  end

  test "should create attend" do
    assert_difference("Attend.count") do
      post attends_url, params: { attend: { comment: @attend.comment, gender: @attend.gender, location: @attend.location, name: @attend.name } }, as: :json
    end

    assert_response :created
  end

  test "should show attend" do
    get attend_url(@attend), as: :json
    assert_response :success
  end

  test "should update attend" do
    patch attend_url(@attend), params: { attend: { comment: @attend.comment, gender: @attend.gender, location: @attend.location, name: @attend.name } }, as: :json
    assert_response :success
  end

  test "should destroy attend" do
    assert_difference("Attend.count", -1) do
      delete attend_url(@attend), as: :json
    end

    assert_response :no_content
  end
end
