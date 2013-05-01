require 'spec_helper'

describe "bookings/show" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Salutation/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/Mobile/)
    rendered.should match(/MyText/)
    rendered.should match(/City/)
    rendered.should match(/Postcode/)
    rendered.should match(/State/)
    rendered.should match(/MyText/)
  end
end
