require "application_system_test_case"

class OrderdetailsTest < ApplicationSystemTestCase
  setup do
    @orderdetail = orderdetails(:one)
  end

  test "visiting the index" do
    visit orderdetails_url
    assert_selector "h1", text: "Orderdetails"
  end

  test "should create orderdetail" do
    visit orderdetails_url
    click_on "New orderdetail"

    fill_in "Order", with: @orderdetail.order_id
    fill_in "Product", with: @orderdetail.product_id
    fill_in "Quantity", with: @orderdetail.quantity
    fill_in "Rate", with: @orderdetail.rate
    fill_in "Review", with: @orderdetail.review
    fill_in "Reviewdate", with: @orderdetail.reviewdate
    click_on "Create Orderdetail"

    assert_text "Orderdetail was successfully created"
    click_on "Back"
  end

  test "should update Orderdetail" do
    visit orderdetail_url(@orderdetail)
    click_on "Edit this orderdetail", match: :first

    fill_in "Order", with: @orderdetail.order_id
    fill_in "Product", with: @orderdetail.product_id
    fill_in "Quantity", with: @orderdetail.quantity
    fill_in "Rate", with: @orderdetail.rate
    fill_in "Review", with: @orderdetail.review
    fill_in "Reviewdate", with: @orderdetail.reviewdate
    click_on "Update Orderdetail"

    assert_text "Orderdetail was successfully updated"
    click_on "Back"
  end

  test "should destroy Orderdetail" do
    visit orderdetail_url(@orderdetail)
    click_on "Destroy this orderdetail", match: :first

    assert_text "Orderdetail was successfully destroyed"
  end
end
