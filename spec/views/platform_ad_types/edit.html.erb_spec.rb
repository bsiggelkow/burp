require 'rails_helper'

RSpec.describe "platform_ad_types/edit", :type => :view do
  before(:each) do
    @platform_ad_type = assign(:platform_ad_type, PlatformAdType.create!(
      :name => "MyString",
      :platform => nil,
      :endpoint => "MyString",
      :schema => "",
      :field_mapping => ""
    ))
  end

  it "renders the edit platform_ad_type form" do
    render

    assert_select "form[action=?][method=?]", platform_ad_type_path(@platform_ad_type), "post" do

      assert_select "input#platform_ad_type_name[name=?]", "platform_ad_type[name]"

      assert_select "input#platform_ad_type_platform_id[name=?]", "platform_ad_type[platform_id]"

      assert_select "input#platform_ad_type_endpoint[name=?]", "platform_ad_type[endpoint]"

      assert_select "input#platform_ad_type_schema[name=?]", "platform_ad_type[schema]"

      assert_select "input#platform_ad_type_field_mapping[name=?]", "platform_ad_type[field_mapping]"
    end
  end
end
