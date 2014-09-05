class PlatformAccount < ActiveRecord::Base
  belongs_to :account
  belongs_to :platform_account_type
  has_one :platform, through: :platform_account_type

  def stats
  end
end
