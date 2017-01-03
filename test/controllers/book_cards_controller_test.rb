require 'test_helper'

class BookCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    detail book_cards_index_url
    assert_response :success
  end

  test "should get get" do
    detail book_cards_get_url
    assert_response :success
  end

  test "should get add" do
    detail book_cards_add_url
    assert_response :success
  end

  test "should get edit" do
    detail book_cards_edit_url
    assert_response :success
  end

end
