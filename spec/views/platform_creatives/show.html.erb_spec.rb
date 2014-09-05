require 'rails_helper'

RSpec.describe "platform_creatives/show", :type => :view do
  before(:each) do
    @platform_creative = assign(:platform_creative, PlatformCreative.create!(
      :name => "Name",
      :uri => "Uri",
      :features => '{"foo":"bar"}',
      :creative => nil,
      :platform_creative_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uri/)
  end
end
