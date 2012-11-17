require 'spec_helper'

describe "depts/new" do
  before(:each) do
    assign(:dept, stub_model(Dept,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new dept form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => depts_path, :method => "post" do
      assert_select "input#dept_name", :name => "dept[name]"
    end
  end
end
