require 'rails_helper'

RSpec.describe "platform_ads/index", :type => :view do
  before(:each) do
    assign(:platform_ads, [
      PlatformAd.create!(
        :name => "Name",
        :uri => "Uri",
        :features => "",
        :ad => nil,
        :platform_ad_type => nil
      ),
      PlatformAd.create!(
        :name => "Name",
        :uri => "Uri",
        :features => "",
        :ad => nil,
        :platform_ad_type => nil
      )
    ])
  end

  it "renders a list of platform_ads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
