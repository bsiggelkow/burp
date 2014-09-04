require 'rails_helper'

RSpec.describe "platforms/show", :type => :view do
  before(:each) do
    @platform = assign(:platform, Platform.create!(
      :name => "Name",
      :base_url => "Base Url",
      :features => '{"foo":"bar"}'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Base Url/)
  end
end
