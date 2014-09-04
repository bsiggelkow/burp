require 'rails_helper'

RSpec.describe "platform_initiative_types/edit", :type => :view do
  before(:each) do
    @platform_initiative_type = assign(:platform_initiative_type, PlatformInitiativeType.create!(
      :name => "MyString",
      :platform => nil,
      :endpoint => "MyString",
      :schema => "",
      :field_mapping => ""
    ))
  end

  it "renders the edit platform_initiative_type form" do
    render

    assert_select "form[action=?][method=?]", platform_initiative_type_path(@platform_initiative_type), "post" do

      assert_select "input#platform_initiative_type_name[name=?]", "platform_initiative_type[name]"

      assert_select "input#platform_initiative_type_platform_id[name=?]", "platform_initiative_type[platform_id]"

      assert_select "input#platform_initiative_type_endpoint[name=?]", "platform_initiative_type[endpoint]"

      assert_select "input#platform_initiative_type_schema[name=?]", "platform_initiative_type[schema]"

      assert_select "input#platform_initiative_type_field_mapping[name=?]", "platform_initiative_type[field_mapping]"
    end
  end
end
