require 'rails_helper'

RSpec.describe "platform_ad_sets/new", :type => :view do
  before(:each) do
    assign(:platform_ad_set, PlatformAdSet.new(
      :name => "MyString",
      :uri => "MyString",
      :features => '{"foo":"bar"}',
      :ad_set => nil,
      :platform_ad_set_type => nil
    ))
  end

  it "renders new platform_ad_set form" do
    render

    assert_select "form[action=?][method=?]", platform_ad_sets_path, "post" do

      assert_select "input#platform_ad_set_name[name=?]", "platform_ad_set[name]"

      assert_select "input#platform_ad_set_uri[name=?]", "platform_ad_set[uri]"

      assert_select "input#platform_ad_set_features[name=?]", "platform_ad_set[features]"

      assert_select "input#platform_ad_set_ad_set_id[name=?]", "platform_ad_set[ad_set_id]"

      assert_select "input#platform_ad_set_platform_ad_set_type_id[name=?]", "platform_ad_set[platform_ad_set_type_id]"
    end
  end
end
