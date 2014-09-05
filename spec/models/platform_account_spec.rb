require 'rails_helper'

RSpec.describe PlatformAccount, :type => :model do
  it { should belong_to :account }
  it { should belong_to :platform_account_type }
  it { should have_one :platform }
  it { should validate_presence_of :name }
end
