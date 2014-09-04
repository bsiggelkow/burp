require 'rails_helper'

RSpec.describe "platform_account_types/edit", :type => :view do
  before(:each) do
    @platform_account_type = assign(:platform_account_type, PlatformAccountType.create!(
      :name => "MyString",
      :platform => nil,
      :endpoint => "MyString",
      :schema => '{"foo":"bar"}',
      :field_mapping => '{"foo":"bar"}'
    ))
  end

  it "renders the edit platform_account_type form" do
    render

    assert_select "form[action=?][method=?]", platform_account_type_path(@platform_account_type), "post" do

      assert_select "input#platform_account_type_name[name=?]", "platform_account_type[name]"

      assert_select "input#platform_account_type_platform_id[name=?]", "platform_account_type[platform_id]"

      assert_select "input#platform_account_type_endpoint[name=?]", "platform_account_type[endpoint]"

      assert_select "textarea#platform_account_type_schema[name=?]", "platform_account_type[schema]"

      assert_select "textarea#platform_account_type_field_mapping[name=?]", "platform_account_type[field_mapping]"
    end
  end
end
