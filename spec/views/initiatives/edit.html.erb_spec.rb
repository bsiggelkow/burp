require 'rails_helper'

RSpec.describe "initiatives/edit", :type => :view do
  before(:each) do
    @initiative = assign(:initiative, Initiative.create!(
      :name => "MyString",
      :description => "MyText",
      :account => nil
    ))
  end

  it "renders the edit initiative form" do
    render

    assert_select "form[action=?][method=?]", initiative_path(@initiative), "post" do

      assert_select "input#initiative_name[name=?]", "initiative[name]"

      assert_select "textarea#initiative_description[name=?]", "initiative[description]"

      assert_select "input#initiative_account_id[name=?]", "initiative[account_id]"
    end
  end
end
