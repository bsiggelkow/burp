require 'rails_helper'

RSpec.describe "platforms/show", :type => :view do
  before(:each) do
    @platform = assign(:platform, Platform.create!(
      :name => "Name",
      :base_url => "Base Url",
      :attributes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Base Url/)
    expect(rendered).to match(/MyText/)
  end
end
