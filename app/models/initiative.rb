class Initiative < ActiveRecord::Base
  belongs_to :account
  has_many :ad_sets
end
