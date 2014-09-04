require 'rails_helper'

RSpec.describe "ads/index", :type => :view do
  before(:each) do
    assign(:ads, [
      Ad.create!(
        :name => "Name",
        :ad_set => nil,
        :target => nil,
        :creative => nil
      ),
      Ad.create!(
        :name => "Name",
        :ad_set => nil,
        :target => nil,
        :creative => nil
      )
    ])
  end

  it "renders a list of ads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
