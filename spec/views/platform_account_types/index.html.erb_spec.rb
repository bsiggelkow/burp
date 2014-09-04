require 'rails_helper'

RSpec.describe "platform_account_types/index", :type => :view do
  before(:each) do
    assign(:platform_account_types, [
      PlatformAccountType.create!(
        :name => "Name",
        :platform => nil,
        :endpoint => "Endpoint",
        :schema => "MyText",
        :field_mapping => "MyText"
      ),
      PlatformAccountType.create!(
        :name => "Name",
        :platform => nil,
        :endpoint => "Endpoint",
        :schema => "MyText",
        :field_mapping => "MyText"
      )
    ])
  end

  it "renders a list of platform_account_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
