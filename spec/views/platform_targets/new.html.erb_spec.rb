require 'rails_helper'

RSpec.describe "platform_targets/new", :type => :view do
  before(:each) do
    assign(:platform_target, PlatformTarget.new(
      :name => "MyString",
      :uri => "MyString",
      :features => '{"foo":"bar"}',
      :target => nil,
      :platform_target_type => nil
    ))
  end

  it "renders new platform_target form" do
    render

    assert_select "form[action=?][method=?]", platform_targets_path, "post" do

      assert_select "input#platform_target_name[name=?]", "platform_target[name]"

      assert_select "input#platform_target_uri[name=?]", "platform_target[uri]"

      assert_select "input#platform_target_features[name=?]", "platform_target[features]"

      assert_select "input#platform_target_target_id[name=?]", "platform_target[target_id]"

      assert_select "input#platform_target_platform_target_type_id[name=?]", "platform_target[platform_target_type_id]"
    end
  end
end
