require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url, as: :json
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { bounces: @ticket.bounces, description: @ticket.description, dev_begin_at: @ticket.dev_begin_at, dev_end_at: @ticket.dev_end_at, merged_at: @ticket.merged_at, name: @ticket.name, point_estimate: @ticket.point_estimate, sprint_id: @ticket.sprint_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ticket" do
    get ticket_url(@ticket), as: :json
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { bounces: @ticket.bounces, description: @ticket.description, dev_begin_at: @ticket.dev_begin_at, dev_end_at: @ticket.dev_end_at, merged_at: @ticket.merged_at, name: @ticket.name, point_estimate: @ticket.point_estimate, sprint_id: @ticket.sprint_id } }, as: :json
    assert_response 200
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket), as: :json
    end

    assert_response 204
  end
end
