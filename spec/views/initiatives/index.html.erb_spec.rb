require 'rails_helper'

RSpec.describe "initiatives/index", :type => :view do
  before(:each) do
    assign(:initiatives, [
      Initiative.create!(
        :name => "Name",
        :description => "MyText",
        :account => nil
      ),
      Initiative.create!(
        :name => "Name",
        :description => "MyText",
        :account => nil
      )
    ])
  end

  it "renders a list of initiatives" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
