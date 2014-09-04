require 'rails_helper'

RSpec.describe "platform_initiative_types/index", :type => :view do
  before(:each) do
    assign(:platform_initiative_types, [
      PlatformInitiativeType.create!(
        :name => "Name",
        :platform => nil,
        :endpoint => "Endpoint",
        :schema => "",
        :field_mapping => ""
      ),
      PlatformInitiativeType.create!(
        :name => "Name",
        :platform => nil,
        :endpoint => "Endpoint",
        :schema => "",
        :field_mapping => ""
      )
    ])
  end

  it "renders a list of platform_initiative_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Endpoint".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
