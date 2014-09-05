require 'rails_helper'

RSpec.describe "platform_creatives/index", :type => :view do
  before(:each) do
    assign(:platform_creatives, [
      PlatformCreative.create!(
        :name => "Name",
        :uri => "Uri",
        :features => '{"foo":"bar"}',
        :creative => nil,
        :platform_creative_type => nil
      ),
      PlatformCreative.create!(
        :name => "Name",
        :uri => "Uri",
        :features => '{"foo":"bar"}',
        :creative => nil,
        :platform_creative_type => nil
      )
    ])
  end

  it "renders a list of platform_creatives" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
  end
end
