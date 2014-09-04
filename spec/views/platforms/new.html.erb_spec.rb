require 'rails_helper'

RSpec.describe "platforms/new", :type => :view do
  before(:each) do
    assign(:platform, Platform.new(
      :name => "MyString",
      :base_url => "MyString",
      :attributes => "MyText"
    ))
  end

  it "renders new platform form" do
    render

    assert_select "form[action=?][method=?]", platforms_path, "post" do

      assert_select "input#platform_name[name=?]", "platform[name]"

      assert_select "input#platform_base_url[name=?]", "platform[base_url]"

      assert_select "textarea#platform_attributes[name=?]", "platform[attributes]"
    end
  end
end
