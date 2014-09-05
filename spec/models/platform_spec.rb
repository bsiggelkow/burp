require 'rails_helper'

RSpec.describe Platform, :type => :model do
  it { should have_many :platform_account_types }
  it { should have_many :platform_initiative_types }
  it { should have_many :platform_ad_set_types }
  it { should have_many :platform_ad_types }
  it { should have_many :platform_target_types }
  it { should have_many :platform_creative_types }
  it { should validate_presence_of :name }
end
