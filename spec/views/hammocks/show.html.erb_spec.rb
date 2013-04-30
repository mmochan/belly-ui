require 'spec_helper'

describe "hammocks/show" do
  before(:each) do
    @hammock = assign(:hammock, stub_model(Hammock,
      :name => "Name",
      :booking_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
