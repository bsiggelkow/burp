require 'rails_helper'

RSpec.describe "platform_accounts/show", :type => :view do
  before(:each) do
    @platform_account = assign(:platform_account, PlatformAccount.create!(
      :name => "Name",
      :uri => "Uri",
      :features => '{"foo":"bar"}',
      :account => nil,
      :platform_account_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uri/)
  end
end
