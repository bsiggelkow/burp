require 'rails_helper'

RSpec.describe PlatformInitiative, :type => :model do
  it { should belong_to :initiative }
  it { should belong_to :platform_initiative_type }
end
