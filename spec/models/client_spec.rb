require 'rails_helper'

RSpec.describe Client, :type => :model do
  it { should have_many :accounts }
  it "is invalid without name" do
    client = Client.new
    expect(client.valid?).to eq(false)
  end
end
