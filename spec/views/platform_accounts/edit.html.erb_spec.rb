require 'rails_helper'

RSpec.describe "platform_accounts/edit", :type => :view do
  before(:each) do
    @platform_account = assign(:platform_account, PlatformAccount.create!(
      :name => "MyString",
      :uri => "MyString",
      :features => '{"foo":"bar"}',
      :account => nil,
      :platform_account_type => nil
    ))
  end

  it "renders the edit platform_account form" do
    render

    assert_select "form[action=?][method=?]", platform_account_path(@platform_account), "post" do

      assert_select "input#platform_account_name[name=?]", "platform_account[name]"

      assert_select "input#platform_account_uri[name=?]", "platform_account[uri]"

      assert_select "input#platform_account_features[name=?]", "platform_account[features]"

      assert_select "input#platform_account_account_id[name=?]", "platform_account[account_id]"

      assert_select "input#platform_account_platform_account_type_id[name=?]", "platform_account[platform_account_type_id]"
    end
  end
end
