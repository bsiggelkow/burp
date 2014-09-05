require 'rails_helper'

RSpec.describe "platform_creative_types/edit", :type => :view do
  before(:each) do
    @platform_creative_type = assign(:platform_creative_type, PlatformCreativeType.create!(
      :name => "MyString",
      :platform => nil,
      :endpoint => "MyString",
      :schema => '{"foo":"bar"}',
      :field_mapping => '{"foo":"bar"}'
    ))
  end

  it "renders the edit platform_creative_type form" do
    render

    assert_select "form[action=?][method=?]", platform_creative_type_path(@platform_creative_type), "post" do

      assert_select "input#platform_creative_type_name[name=?]", "platform_creative_type[name]"

      assert_select "input#platform_creative_type_platform_id[name=?]", "platform_creative_type[platform_id]"

      assert_select "input#platform_creative_type_endpoint[name=?]", "platform_creative_type[endpoint]"

      assert_select "input#platform_creative_type_schema[name=?]", "platform_creative_type[schema]"

      assert_select "input#platform_creative_type_field_mapping[name=?]", "platform_creative_type[field_mapping]"
    end
  end
end
