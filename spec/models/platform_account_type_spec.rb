require 'rails_helper'

RSpec.describe PlatformAccountType, :type => :model do
  it { should belong_to :platform }
end
