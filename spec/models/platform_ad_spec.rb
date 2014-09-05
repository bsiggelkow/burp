require 'rails_helper'

RSpec.describe PlatformAd, :type => :model do
  it { should belong_to :ad }
  it { should belong_to :platform_ad_type }
  it { should validate_presence_of :name }
end
