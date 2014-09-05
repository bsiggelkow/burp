require 'rails_helper'

RSpec.describe "platform_ad_sets/edit", :type => :view do
  before(:each) do
    @platform_ad_set = assign(:platform_ad_set, PlatformAdSet.create!(
      :name => "MyString",
      :uri => "MyString",
      :features => '{"foo":"bar"}',
      :ad_set => nil,
      :platform_ad_set_type => nil
    ))
  end

  it "renders the edit platform_ad_set form" do
    render

    assert_select "form[action=?][method=?]", platform_ad_set_path(@platform_ad_set), "post" do

      assert_select "input#platform_ad_set_name[name=?]", "platform_ad_set[name]"

      assert_select "input#platform_ad_set_uri[name=?]", "platform_ad_set[uri]"

      assert_select "input#platform_ad_set_features[name=?]", "platform_ad_set[features]"

      assert_select "input#platform_ad_set_ad_set_id[name=?]", "platform_ad_set[ad_set_id]"

      assert_select "input#platform_ad_set_platform_ad_set_type_id[name=?]", "platform_ad_set[platform_ad_set_type_id]"
    end
  end
end
