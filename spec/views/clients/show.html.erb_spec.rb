require 'rails_helper'

RSpec.describe "clients/show", :type => :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "Name",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact/)
  end
end
