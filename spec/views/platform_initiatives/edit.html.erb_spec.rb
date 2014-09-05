require 'rails_helper'

RSpec.describe "platform_initiatives/edit", :type => :view do
  before(:each) do
    @platform_initiative = assign(:platform_initiative, PlatformInitiative.create!(
      :name => "MyString",
      :uri => "MyString",
      :features => '{"foo":"bar"}',
      :initiative => nil,
      :platform_initiative_type => nil
    ))
  end

  it "renders the edit platform_initiative form" do
    render

    assert_select "form[action=?][method=?]", platform_initiative_path(@platform_initiative), "post" do

      assert_select "input#platform_initiative_name[name=?]", "platform_initiative[name]"

      assert_select "input#platform_initiative_uri[name=?]", "platform_initiative[uri]"

      assert_select "input#platform_initiative_features[name=?]", "platform_initiative[features]"

      assert_select "input#platform_initiative_initiative_id[name=?]", "platform_initiative[initiative_id]"

      assert_select "input#platform_initiative_platform_initiative_type_id[name=?]", "platform_initiative[platform_initiative_type_id]"
    end
  end
end
