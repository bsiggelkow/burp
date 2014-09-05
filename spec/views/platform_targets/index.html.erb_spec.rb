require 'rails_helper'

RSpec.describe "platform_targets/index", :type => :view do
  before(:each) do
    assign(:platform_targets, [
      PlatformTarget.create!(
        :name => "Name",
        :uri => "Uri",
        :features => '{"foo":"bar"}',
        :target => nil,
        :platform_target_type => nil
      ),
      PlatformTarget.create!(
        :name => "Name",
        :uri => "Uri",
        :features => '{"foo":"bar"}',
        :target => nil,
        :platform_target_type => nil
      )
    ])
  end

  it "renders a list of platform_targets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
  end
end
