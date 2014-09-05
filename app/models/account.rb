class Account < ActiveRecord::Base
  belongs_to :client
  has_many :initiatives
  has_many :platform_accounts
end
