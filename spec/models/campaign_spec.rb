require "rails_helper"
#
RSpec.describe Campaign, :type => :model do
  it "is invalid without name" do
    campaign = Campaign.new
    expect(campaign.valid?).to eq(false)
  end
end