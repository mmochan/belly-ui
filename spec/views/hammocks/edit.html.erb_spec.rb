require 'spec_helper'

describe "hammocks/edit" do
  before(:each) do
    @hammock = assign(:hammock, stub_model(Hammock,
      :name => "MyString",
      :booking_id => 1
    ))
  end

  it "renders the edit hammock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hammock_path(@hammock), "post" do
      assert_select "input#hammock_name[name=?]", "hammock[name]"
      assert_select "input#hammock_booking_id[name=?]", "hammock[booking_id]"
    end
  end
end
