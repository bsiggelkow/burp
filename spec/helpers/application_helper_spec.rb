require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the WelcomeHelper. For example:
#
# describe WelcomeHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, :type => :helper do
  describe 'render_time' do
    it 'computes the render time' do
      assign(:start_time, 5.seconds.ago)
      expect(helper.render_time).to be_within(0.5).of(5)
    end
  end
end
