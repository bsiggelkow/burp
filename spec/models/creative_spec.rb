require 'rails_helper'

RSpec.describe Creative, :type => :model do
  it { should have_one :ad }
end
