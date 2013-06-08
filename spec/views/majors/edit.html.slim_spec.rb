require 'spec_helper'

describe "majors/edit" do
  before(:each) do
    @major = assign(:major, stub_model(Major,
      :classname => "MyString"
    ))
  end

  it "renders the edit major form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", major_path(@major), "post" do
      assert_select "input#major_classname[name=?]", "major[classname]"
    end
  end
end
