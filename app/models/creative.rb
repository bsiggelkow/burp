class Creative < ActiveRecord::Base
  has_one :ad
  validates_presence_of :name
end
