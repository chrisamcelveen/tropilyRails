require 'rails_helper'

RSpec.describe "properties/new", type: :view do
  before(:each) do
    assign(:property, Property.new(
      :title => "MyString",
      :description => "MyText",
      :price => 1,
      :image => "MyString",
      :sold => ""
    ))
  end

  it "renders new property form" do
    render

    assert_select "form[action=?][method=?]", properties_path, "post" do

      assert_select "input#property_title[name=?]", "property[title]"

      assert_select "textarea#property_description[name=?]", "property[description]"

      assert_select "input#property_price[name=?]", "property[price]"

      assert_select "input#property_image[name=?]", "property[image]"

      assert_select "input#property_sold[name=?]", "property[sold]"
    end
  end
end
