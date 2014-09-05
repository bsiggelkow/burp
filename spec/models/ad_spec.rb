require 'rails_helper'

RSpec.describe Ad, :type => :model do
  it { should belong_to :ad_set }
  it { should belong_to :target }
  it { should belong_to :creative }
end
