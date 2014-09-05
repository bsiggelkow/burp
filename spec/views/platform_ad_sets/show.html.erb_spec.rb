require 'rails_helper'

RSpec.describe "platform_ad_sets/show", :type => :view do
  before(:each) do
    @platform_ad_set = assign(:platform_ad_set, PlatformAdSet.create!(
      :name => "Name",
      :uri => "Uri",
      :features => '{"foo":"bar"}',
      :ad_set => nil,
      :platform_ad_set_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uri/)
  end
end
