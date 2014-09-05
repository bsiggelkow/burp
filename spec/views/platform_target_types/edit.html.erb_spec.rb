require 'rails_helper'

RSpec.describe "platform_target_types/edit", :type => :view do
  before(:each) do
    @platform_target_type = assign(:platform_target_type, PlatformTargetType.create!(
      :name => "MyString",
      :platform => nil,
      :endpoint => "MyString",
      :schema => '{"foo":"bar"}',
      :field_mapping => '{"foo":"bar"}'
    ))
  end

  it "renders the edit platform_target_type form" do
    render

    assert_select "form[action=?][method=?]", platform_target_type_path(@platform_target_type), "post" do

      assert_select "input#platform_target_type_name[name=?]", "platform_target_type[name]"

      assert_select "input#platform_target_type_platform_id[name=?]", "platform_target_type[platform_id]"

      assert_select "input#platform_target_type_endpoint[name=?]", "platform_target_type[endpoint]"

      assert_select "input#platform_target_type_schema[name=?]", "platform_target_type[schema]"

      assert_select "input#platform_target_type_field_mapping[name=?]", "platform_target_type[field_mapping]"
    end
  end
end
