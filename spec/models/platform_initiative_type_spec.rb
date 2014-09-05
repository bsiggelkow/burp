require 'rails_helper'

RSpec.describe PlatformInitiativeType, :type => :model do
  it { should belong_to :platform }
  it { should validate_presence_of :name }
end
