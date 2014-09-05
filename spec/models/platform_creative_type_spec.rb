require 'rails_helper'

RSpec.describe PlatformCreativeType, :type => :model do
  it { should belong_to :platform }
end
