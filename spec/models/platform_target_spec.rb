require 'rails_helper'

RSpec.describe PlatformTarget, :type => :model do
  it { should belong_to :target }
  it { should belong_to :platform_target_type }
  it { should validate_presence_of :name }
end
