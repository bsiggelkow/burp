require 'rails_helper'

RSpec.describe PlatformAdType, :type => :model do
  it { should belong_to :platform }
end
