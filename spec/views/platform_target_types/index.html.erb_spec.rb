require 'rails_helper'

RSpec.describe "platform_target_types/index", :type => :view do
  before(:each) do
    assign(:platform_target_types, [
      PlatformTargetType.create!(
        :name => "Name",
        :platform => nil,
        :endpoint => "Endpoint",
        :schema => '{"foo":"bar"}',
        :field_mapping => '{"foo":"bar"}'
      ),
      PlatformTargetType.create!(
        :name => "Name",
        :platform => nil,
        :endpoint => "Endpoint",
        :schema => '{"foo":"bar"}',
        :field_mapping => '{"foo":"bar"}'
      )
    ])
  end

  it "renders a list of platform_target_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Endpoint".to_s, :count => 2
  end
end
