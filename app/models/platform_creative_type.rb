class PlatformCreativeType < ActiveRecord::Base
  belongs_to :platform
  validates :name, presence: true
end
