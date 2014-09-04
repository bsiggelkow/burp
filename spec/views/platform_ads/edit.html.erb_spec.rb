require 'rails_helper'

RSpec.describe "platform_ads/edit", :type => :view do
  before(:each) do
    @platform_ad = assign(:platform_ad, PlatformAd.create!(
      :name => "MyString",
      :uri => "MyString",
      :features => "",
      :ad => nil,
      :platform_ad_type => nil
    ))
  end

  it "renders the edit platform_ad form" do
    render

    assert_select "form[action=?][method=?]", platform_ad_path(@platform_ad), "post" do

      assert_select "input#platform_ad_name[name=?]", "platform_ad[name]"

      assert_select "input#platform_ad_uri[name=?]", "platform_ad[uri]"

      assert_select "input#platform_ad_features[name=?]", "platform_ad[features]"

      assert_select "input#platform_ad_ad_id[name=?]", "platform_ad[ad_id]"

      assert_select "input#platform_ad_platform_ad_type_id[name=?]", "platform_ad[platform_ad_type_id]"
    end
  end
end
