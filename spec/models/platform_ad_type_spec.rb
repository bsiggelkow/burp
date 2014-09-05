require 'rails_helper'

RSpec.describe PlatformAdType, :type => :model do
  it { should belong_to :platform }
  it { should validate_presence_of :name }
end
