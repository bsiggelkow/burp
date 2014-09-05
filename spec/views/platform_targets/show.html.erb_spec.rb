require 'rails_helper'

RSpec.describe "platform_targets/show", :type => :view do
  before(:each) do
    @platform_target = assign(:platform_target, PlatformTarget.create!(
      :name => "Name",
      :uri => "Uri",
      :features => '{"foo":"bar"}',
      :target => nil,
      :platform_target_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uri/)
  end
end
