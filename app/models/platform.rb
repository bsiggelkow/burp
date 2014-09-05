class Platform < ActiveRecord::Base
  has_many :platform_account_types
  has_many :platform_initiative_types
  has_many :platform_ad_set_types
  has_many :platform_ad_types
  has_many :platform_creative_types
  has_many :platform_target_types
end
