class PlatformAdSet < ActiveRecord::Base

  belongs_to :ad_set
  belongs_to :platform_ad_set_type
  validates :name, presence: true
end
