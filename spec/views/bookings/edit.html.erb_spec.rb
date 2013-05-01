require 'spec_helper'

describe "bookings/edit" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :salutation => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :mobile => "MyString",
      :address => "MyText",
      :city => "MyString",
      :postcode => "MyString",
      :state => "MyString",
      :special_requests => "MyText"
    ))
  end

  it "renders the edit booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do
      assert_select "input#booking_salutation[name=?]", "booking[salutation]"
      assert_select "input#booking_first_name[name=?]", "booking[first_name]"
      assert_select "input#booking_last_name[name=?]", "booking[last_name]"
      assert_select "input#booking_email[name=?]", "booking[email]"
      assert_select "input#booking_mobile[name=?]", "booking[mobile]"
      assert_select "textarea#booking_address[name=?]", "booking[address]"
      assert_select "input#booking_city[name=?]", "booking[city]"
      assert_select "input#booking_postcode[name=?]", "booking[postcode]"
      assert_select "input#booking_state[name=?]", "booking[state]"
      assert_select "textarea#booking_special_requests[name=?]", "booking[special_requests]"
    end
  end
end
