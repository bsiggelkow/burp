require 'rails_helper'

RSpec.describe Initiative, :type => :model do
  it { should belong_to :account }
  it { should have_many :ad_sets }
  it { should validate_presence_of :name }
end
