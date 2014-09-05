class PlatformAd < ActiveRecord::Base
  belongs_to :ad
  belongs_to :platform_ad_type
  validates :name, presence: true
end
