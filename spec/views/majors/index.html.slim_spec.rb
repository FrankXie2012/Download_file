require 'spec_helper'

describe "majors/index" do
  before(:each) do
    assign(:majors, [
      stub_model(Major,
        :classname => "Classname"
      ),
      stub_model(Major,
        :classname => "Classname"
      )
    ])
  end

  it "renders a list of majors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Classname".to_s, :count => 2
  end
end
