class AdSet < ActiveRecord::Base
  belongs_to :initiative
  has_many :ads
  validates_presence_of :name
end
