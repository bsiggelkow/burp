require 'rails_helper'

RSpec.describe AdSet, :type => :model do
  it { should belong_to :initiative }
  it { validate_presence_of :name }
end
