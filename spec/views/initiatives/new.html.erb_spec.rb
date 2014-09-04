require 'rails_helper'

RSpec.describe "initiatives/new", :type => :view do
  before(:each) do
    assign(:initiative, Initiative.new(
      :name => "MyString",
      :description => "MyText",
      :account => nil
    ))
  end

  it "renders new initiative form" do
    render

    assert_select "form[action=?][method=?]", initiatives_path, "post" do

      assert_select "input#initiative_name[name=?]", "initiative[name]"

      assert_select "textarea#initiative_description[name=?]", "initiative[description]"

      assert_select "input#initiative_account_id[name=?]", "initiative[account_id]"
    end
  end
end
