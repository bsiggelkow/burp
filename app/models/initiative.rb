class Initiative < ActiveRecord::Base
  belongs_to :account
  has_many :ad_sets
  validates_presence_of :name
end
