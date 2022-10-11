require "test_helper"

class OwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner = owners(:one)
  end

  test "should get index" do
    get owners_url, as: :json
    assert_response :success
  end

  test "should create owner" do
    assert_difference("Owner.count") do
      post owners_url, params: { owner: { name: 'Mike', email: 'mike@email.com' } }, as: :json
    end

    assert_response :success
  end

  test "should show owner" do
    get owner_url(@owner), as: :json
    assert_response :success
  end

  test "should update owner" do
    patch owner_url(@owner), params: { owner: { name: 'Yorick', email: 'yorick@email.com' } }, as: :json
    assert_response :success
  end

  test "should destroy owner" do
    assert_difference("Owner.count", -1) do
      delete owner_url(@owner), as: :json
    end

    assert_response :success
  end
end
