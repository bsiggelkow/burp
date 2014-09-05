require 'rails_helper'

RSpec.describe PlatformTargetType, :type => :model do
  it { should belong_to :platform }
end
