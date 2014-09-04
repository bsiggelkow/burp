require 'rails_helper'

RSpec.describe "platform_initiatives/show", :type => :view do
  before(:each) do
    @platform_initiative = assign(:platform_initiative, PlatformInitiative.create!(
      :name => "Name",
      :uri => "Uri",
      :features => "",
      :initiative => nil,
      :platform_initiative_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uri/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
