require 'rails_helper'

RSpec.describe "platform_ad_set_types/edit", :type => :view do
  before(:each) do
    @platform_ad_set_type = assign(:platform_ad_set_type, PlatformAdSetType.create!(
      :name => "MyString",
      :platform => nil,
      :endpoint => "MyString",
      :schema => '{"foo":"bar"}',
      :field_mapping => '{"foo":"bar"}'
    ))
  end

  it "renders the edit platform_ad_set_type form" do
    render

    assert_select "form[action=?][method=?]", platform_ad_set_type_path(@platform_ad_set_type), "post" do

      assert_select "input#platform_ad_set_type_name[name=?]", "platform_ad_set_type[name]"

      assert_select "input#platform_ad_set_type_platform_id[name=?]", "platform_ad_set_type[platform_id]"

      assert_select "input#platform_ad_set_type_endpoint[name=?]", "platform_ad_set_type[endpoint]"

      assert_select "input#platform_ad_set_type_schema[name=?]", "platform_ad_set_type[schema]"

      assert_select "input#platform_ad_set_type_field_mapping[name=?]", "platform_ad_set_type[field_mapping]"
    end
  end
end
