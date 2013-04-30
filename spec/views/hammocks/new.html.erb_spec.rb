require 'spec_helper'

describe "hammocks/new" do
  before(:each) do
    assign(:hammock, stub_model(Hammock,
      :name => "MyString",
      :booking_id => 1
    ).as_new_record)
  end

  it "renders new hammock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hammocks_path, "post" do
      assert_select "input#hammock_name[name=?]", "hammock[name]"
      assert_select "input#hammock_booking_id[name=?]", "hammock[booking_id]"
    end
  end
end
