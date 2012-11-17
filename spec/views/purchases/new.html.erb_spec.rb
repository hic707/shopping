require 'spec_helper'

describe "purchases/new" do
  before(:each) do
    assign(:purchase, stub_model(Purchase,
      :name => "MyString",
      :price => 1,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchases_path, :method => "post" do
      assert_select "input#purchase_name", :name => "purchase[name]"
      assert_select "input#purchase_price", :name => "purchase[price]"
      assert_select "input#purchase_quantity", :name => "purchase[quantity]"
    end
  end
end
