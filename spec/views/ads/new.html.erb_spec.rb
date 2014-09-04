require 'rails_helper'

RSpec.describe "ads/new", :type => :view do
  before(:each) do
    assign(:ad, Ad.new(
      :name => "MyString",
      :ad_set => nil,
      :target => nil,
      :creative => nil
    ))
  end

  it "renders new ad form" do
    render

    assert_select "form[action=?][method=?]", ads_path, "post" do

      assert_select "input#ad_name[name=?]", "ad[name]"

      assert_select "input#ad_ad_set_id[name=?]", "ad[ad_set_id]"

      assert_select "input#ad_target_id[name=?]", "ad[target_id]"

      assert_select "input#ad_creative_id[name=?]", "ad[creative_id]"
    end
  end
end
