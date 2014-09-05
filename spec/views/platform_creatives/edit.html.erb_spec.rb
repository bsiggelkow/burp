require 'rails_helper'

RSpec.describe "platform_creatives/edit", :type => :view do
  before(:each) do
    @platform_creative = assign(:platform_creative, PlatformCreative.create!(
      :name => "MyString",
      :uri => "MyString",
      :features => '{"foo":"bar"}',
      :creative => nil,
      :platform_creative_type => nil
    ))
  end

  it "renders the edit platform_creative form" do
    render

    assert_select "form[action=?][method=?]", platform_creative_path(@platform_creative), "post" do

      assert_select "input#platform_creative_name[name=?]", "platform_creative[name]"

      assert_select "input#platform_creative_uri[name=?]", "platform_creative[uri]"

      assert_select "input#platform_creative_features[name=?]", "platform_creative[features]"

      assert_select "input#platform_creative_creative_id[name=?]", "platform_creative[creative_id]"

      assert_select "input#platform_creative_platform_creative_type_id[name=?]", "platform_creative[platform_creative_type_id]"
    end
  end
end
