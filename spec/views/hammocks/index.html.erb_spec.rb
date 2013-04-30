require 'spec_helper'

describe "hammocks/index" do
  before(:each) do
    assign(:hammocks, [
      stub_model(Hammock,
        :name => "Name",
        :booking_id => 1
      ),
      stub_model(Hammock,
        :name => "Name",
        :booking_id => 1
      )
    ])
  end

  it "renders a list of hammocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
