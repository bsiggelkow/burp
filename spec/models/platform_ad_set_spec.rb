require 'rails_helper'

RSpec.describe PlatformAdSet, :type => :model do
  it { should belong_to :ad_set }
  it { should belong_to :platform_ad_set_type }
  it { should validate_presence_of :name }
end
