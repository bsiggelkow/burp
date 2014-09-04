require 'rails_helper'

RSpec.describe "ad_sets/index", :type => :view do
  before(:each) do
    assign(:ad_sets, [
      AdSet.create!(
        :name => "Name",
        :initiative => nil
      ),
      AdSet.create!(
        :name => "Name",
        :initiative => nil
      )
    ])
  end

  it "renders a list of ad_sets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
