require 'rails_helper'

RSpec.describe "accounts/new", :type => :view do
  before(:each) do
    assign(:account, Account.new(
      :name => "MyString",
      :client => nil
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_client_id[name=?]", "account[client_id]"
    end
  end
end
