require "test_helper"

class NominationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nomination = nominations(:one)
  end

  test "should get index" do
    get nominations_url
    assert_response :success
  end

  test "should get new" do
    get new_nomination_url
    assert_response :success
  end

  test "should create nomination" do
    assert_difference('Nomination.count') do
      post nominations_url, params: { nomination: { body: @nomination.body, receiverId: @nomination.receiverId, receiverImage: @nomination.receiverImage, receiverName: @nomination.receiverName, senderId: @nomination.senderId, senderName: @nomination.senderName, type: @nomination.type } }
    end

    assert_redirected_to nomination_url(Nomination.last)
  end

  test "should show nomination" do
    get nomination_url(@nomination)
    assert_response :success
  end

  test "should get edit" do
    get edit_nomination_url(@nomination)
    assert_response :success
  end

  test "should update nomination" do
    patch nomination_url(@nomination), params: { nomination: { body: @nomination.body, receiverId: @nomination.receiverId, receiverImage: @nomination.receiverImage, receiverName: @nomination.receiverName, senderId: @nomination.senderId, senderName: @nomination.senderName, type: @nomination.type } }
    assert_redirected_to nomination_url(@nomination)
  end

  test "should destroy nomination" do
    assert_difference('Nomination.count', -1) do
      delete nomination_url(@nomination)
    end

    assert_redirected_to nominations_url
  end
end
