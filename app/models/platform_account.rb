class PlatformAccount < ActiveRecord::Base

  include PlatformConnection

  belongs_to :account
  belongs_to :platform_account_type
  has_one :platform, through: :platform_account_type
  validates :name, presence: true

  def stats
    connection(stats_uri).get.body if stats_uri
  end

end
