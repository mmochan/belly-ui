require 'spec_helper'

describe "reservations/edit" do
  before(:each) do
    @reservation = assign(:reservation, stub_model(Reservation,
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

  it "renders the edit reservation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do
      assert_select "input#reservation_salutation[name=?]", "reservation[salutation]"
      assert_select "input#reservation_first_name[name=?]", "reservation[first_name]"
      assert_select "input#reservation_last_name[name=?]", "reservation[last_name]"
      assert_select "input#reservation_email[name=?]", "reservation[email]"
      assert_select "input#reservation_mobile[name=?]", "reservation[mobile]"
      assert_select "textarea#reservation_address[name=?]", "reservation[address]"
      assert_select "input#reservation_city[name=?]", "reservation[city]"
      assert_select "input#reservation_postcode[name=?]", "reservation[postcode]"
      assert_select "input#reservation_state[name=?]", "reservation[state]"
      assert_select "textarea#reservation_special_requests[name=?]", "reservation[special_requests]"
    end
  end
end
