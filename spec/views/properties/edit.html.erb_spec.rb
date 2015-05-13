require 'rails_helper'

RSpec.describe "properties/edit", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :title => "MyString",
      :description => "MyText",
      :price => 1,
      :image => "MyString",
      :sold => ""
    ))
  end

  it "renders the edit property form" do
    render

    assert_select "form[action=?][method=?]", property_path(@property), "post" do

      assert_select "input#property_title[name=?]", "property[title]"

      assert_select "textarea#property_description[name=?]", "property[description]"

      assert_select "input#property_price[name=?]", "property[price]"

      assert_select "input#property_image[name=?]", "property[image]"

      assert_select "input#property_sold[name=?]", "property[sold]"
    end
  end
end
