require 'rails_helper'

RSpec.describe "platform_ad_sets/index", :type => :view do
  before(:each) do
    assign(:platform_ad_sets, [
      PlatformAdSet.create!(
        :name => "Name",
        :uri => "Uri",
        :features => "",
        :ad_set => nil,
        :platform_ad_set_type => nil
      ),
      PlatformAdSet.create!(
        :name => "Name",
        :uri => "Uri",
        :features => "",
        :ad_set => nil,
        :platform_ad_set_type => nil
      )
    ])
  end

  it "renders a list of platform_ad_sets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
