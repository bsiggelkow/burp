require 'rails_helper'

RSpec.describe "platform_accounts/index", :type => :view do
  before(:each) do
    assign(:platform_accounts, [
      PlatformAccount.create!(
        :name => "Name",
        :uri => "Uri",
        :features => '{"foo":"bar"}',
        :account => nil,
        :platform_account_type => nil
      ),
      PlatformAccount.create!(
        :name => "Name",
        :uri => "Uri",
        :features => '{"foo":"bar"}',
        :account => nil,
        :platform_account_type => nil
      )
    ])
  end

  it "renders a list of platform_accounts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
  end
end
