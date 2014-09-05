class AdSet < ActiveRecord::Base
  belongs_to :initiative
  has_many :ads
end
