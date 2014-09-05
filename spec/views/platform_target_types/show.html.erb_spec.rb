require 'rails_helper'

RSpec.describe "platform_target_types/show", :type => :view do
  before(:each) do
    @platform_target_type = assign(:platform_target_type, PlatformTargetType.create!(
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
