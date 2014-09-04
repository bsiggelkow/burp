require 'rails_helper'

RSpec.describe "ads/show", :type => :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :name => "Name",
      :ad_set => nil,
      :target => nil,
      :creative => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
