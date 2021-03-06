require 'rails_helper'

RSpec.describe "properties/show", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :title => "Title",
      :description => "MyText",
      :price => 1,
      :image => "Image",
      :sold => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(//)
  end
end
