require 'spec_helper'

describe "majors/show" do
  before(:each) do
    @major = assign(:major, stub_model(Major,
      :classname => "Classname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Classname/)
  end
end
