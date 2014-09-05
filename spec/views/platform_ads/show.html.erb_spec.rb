require 'rails_helper'

RSpec.describe "platform_ads/show", :type => :view do
  before(:each) do
    @platform_ad = assign(:platform_ad, PlatformAd.create!(
      :name => "Name",
      :uri => "Uri",
      :features => '{"foo":"bar"}',
      :ad => nil,
      :platform_ad_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uri/)
  end
end
