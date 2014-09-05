require 'rails_helper'

RSpec.describe "platform_creative_types/show", :type => :view do
  before(:each) do
    @platform_creative_type = assign(:platform_creative_type, PlatformCreativeType.create!(
      :name => "Name",
      :platform => nil,
      :endpoint => "Endpoint",
      :schema => '{"foo":"bar"}',
      :field_mapping => '{"foo":"bar"}'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Endpoint/)
  end
end
