class PlatformAdType < ActiveRecord::Base
  include PlatformTransformer
  belongs_to :platform
  validates :name, presence: true
end
