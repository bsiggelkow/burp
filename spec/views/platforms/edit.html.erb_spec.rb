require 'rails_helper'

RSpec.describe "platforms/edit", :type => :view do
  before(:each) do
    @platform = assign(:platform, Platform.create!(
      :name => "MyString",
      :base_url => "MyString",
      :features => '{"foo":"bar"}'
    ))
  end

  it "renders the edit platform form" do
    render

    assert_select "form[action=?][method=?]", platform_path(@platform), "post" do

      assert_select "input#platform_name[name=?]", "platform[name]"

      assert_select "input#platform_base_url[name=?]", "platform[base_url]"

      assert_select "textarea#platform_features[name=?]", "platform[features]"
    end
  end
end
