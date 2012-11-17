require 'spec_helper'

describe "depts/index" do
  before(:each) do
    assign(:depts, [
      stub_model(Dept,
        :name => "Name"
      ),
      stub_model(Dept,
        :name => "Name"
      )
    ])
  end

  it "renders a list of depts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
