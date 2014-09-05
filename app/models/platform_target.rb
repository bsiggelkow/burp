class PlatformTarget < ActiveRecord::Base
  belongs_to :target
  belongs_to :platform_target_type
  validates :name, presence: true
end
