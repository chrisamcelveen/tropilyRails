require 'rails_helper'

RSpec.describe "properties/index", type: :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :title => "Title",
        :description => "MyText",
        :price => 1,
        :image => "Image",
        :sold => ""
      ),
      Property.create!(
        :title => "Title",
        :description => "MyText",
        :price => 1,
        :image => "Image",
        :sold => ""
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
