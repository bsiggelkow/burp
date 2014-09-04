require 'rails_helper'

RSpec.describe "ad_sets/new", :type => :view do
  before(:each) do
    assign(:ad_set, AdSet.new(
      :name => "MyString",
      :initiative => nil
    ))
  end

  it "renders new ad_set form" do
    render

    assert_select "form[action=?][method=?]", ad_sets_path, "post" do

      assert_select "input#ad_set_name[name=?]", "ad_set[name]"

      assert_select "input#ad_set_initiative_id[name=?]", "ad_set[initiative_id]"
    end
  end
end
