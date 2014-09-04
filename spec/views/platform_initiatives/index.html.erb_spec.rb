require 'rails_helper'

RSpec.describe "platform_initiatives/index", :type => :view do
  before(:each) do
    assign(:platform_initiatives, [
      PlatformInitiative.create!(
        :name => "Name",
        :uri => "Uri",
        :features => "",
        :initiative => nil,
        :platform_initiative_type => nil
      ),
      PlatformInitiative.create!(
        :name => "Name",
        :uri => "Uri",
        :features => "",
        :initiative => nil,
        :platform_initiative_type => nil
      )
    ])
  end

  it "renders a list of platform_initiatives" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
