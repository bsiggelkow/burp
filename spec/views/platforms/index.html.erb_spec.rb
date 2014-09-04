require 'rails_helper'

RSpec.describe "platforms/index", :type => :view do
  before(:each) do
    assign(:platforms, [
      Platform.create!(
        :name => "Name",
        :base_url => "Base Url",
        :features => '{"foo":"bar"}'
      ),
      Platform.create!(
        :name => "Name",
        :base_url => "Base Url",
        :features => '{"foo":"bar"}'
      )
    ])
  end

  it "renders a list of platforms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Base Url".to_s, :count => 2
  end
end
