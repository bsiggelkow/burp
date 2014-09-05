require 'rails_helper'

RSpec.describe PlatformCreative, :type => :model do
  it { should belong_to :creative }
  it { should belong_to :platform_creative_type }
end
