require 'spec_helper'

describe "reservations/index" do
  before(:each) do
    assign(:reservations, [
      stub_model(Reservation,
        :salutation => "Salutation",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :mobile => "Mobile",
        :address => "MyText",
        :city => "City",
        :postcode => "Postcode",
        :state => "State",
        :special_requests => "MyText"
      ),
      stub_model(Reservation,
        :salutation => "Salutation",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :mobile => "Mobile",
        :address => "MyText",
        :city => "City",
        :postcode => "Postcode",
        :state => "State",
        :special_requests => "MyText"
      )
    ])
  end

  it "renders a list of reservations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Salutation".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
