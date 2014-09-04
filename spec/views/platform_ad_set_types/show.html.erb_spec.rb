require 'rails_helper'

RSpec.describe "platform_ad_set_types/show", :type => :view do
  before(:each) do
    @platform_ad_set_type = assign(:platform_ad_set_type, PlatformAdSetType.create!(
      :name => "Name",
      :platform => nil,
      :endpoint => "Endpoint",
      :schema => "",
      :field_mapping => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Endpoint/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
