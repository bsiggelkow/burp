class PlatformTargetType < ActiveRecord::Base
  belongs_to :platform
  validates :name, presence: true
end
