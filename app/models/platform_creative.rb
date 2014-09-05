class PlatformCreative < ActiveRecord::Base
  belongs_to :creative
  belongs_to :platform_creative_type
  validates :name, presence: true
end
