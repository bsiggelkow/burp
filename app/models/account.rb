class Account < ActiveRecord::Base
  belongs_to :client
  has_many :initiatives
  has_many :platform_accounts

  validates_presence_of :name
end
