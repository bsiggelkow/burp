require 'rails_helper'

RSpec.describe "ad_sets/edit", :type => :view do
  before(:each) do
    @ad_set = assign(:ad_set, AdSet.create!(
      :name => "MyString",
      :initiative => nil
    ))
  end

  it "renders the edit ad_set form" do
    render

    assert_select "form[action=?][method=?]", ad_set_path(@ad_set), "post" do

      assert_select "input#ad_set_name[name=?]", "ad_set[name]"

      assert_select "input#ad_set_initiative_id[name=?]", "ad_set[initiative_id]"
    end
  end
end
