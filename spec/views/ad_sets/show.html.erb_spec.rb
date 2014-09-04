require 'rails_helper'

RSpec.describe "ad_sets/show", :type => :view do
  before(:each) do
    @ad_set = assign(:ad_set, AdSet.create!(
      :name => "Name",
      :initiative => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
