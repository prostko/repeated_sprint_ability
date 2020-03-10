require 'test_helper'

class PrincipalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @principal = principals(:one)
  end

  test "should get index" do
    get principals_url, as: :json
    assert_response :success
  end

  test "should create principal" do
    assert_difference('Principal.count') do
      post principals_url, params: { principal: { description: @principal.description, name: @principal.name } }, as: :json
    end

    assert_response 201
  end

  test "should show principal" do
    get principal_url(@principal), as: :json
    assert_response :success
  end

  test "should update principal" do
    patch principal_url(@principal), params: { principal: { description: @principal.description, name: @principal.name } }, as: :json
    assert_response 200
  end

  test "should destroy principal" do
    assert_difference('Principal.count', -1) do
      delete principal_url(@principal), as: :json
    end

    assert_response 204
  end
end
