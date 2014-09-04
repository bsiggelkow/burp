class PlatformAccount < ActiveRecord::Base
  belongs_to :account
  belongs_to :platform_account_type
end
