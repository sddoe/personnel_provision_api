require "test_helper"

class EquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get equipments_url, as: :json
    assert_response :success
  end

  test "should create equipment" do
    assert_difference("Equipment.count") do
      post equipments_url, params: { equipment: { serial: 'ABC1', name: 'iPhone', description: 'Smartphone' } }, as: :json
    end

    assert_response :success
  end

  test "should show equipment" do
    get equipment_url(@equipment), as: :json
    assert_response :success
  end

  test "should update equipment" do
    patch equipment_url(@equipment), params: { equipment: { name: 'OtherString' } }, as: :json
    assert_response :success
  end

  test "should destroy equipment" do
    assert_difference("Equipment.count", -1) do
      delete equipment_url(@equipment), as: :json
    end

    assert_response :success
  end
end
