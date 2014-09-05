require 'rails_helper'

RSpec.describe Account, :type => :model do  
  it { should belong_to :client }
  it { should have_many :initiatives }
  it { should validate_presence_of :name }
end
