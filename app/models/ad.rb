class Ad < ActiveRecord::Base
  belongs_to :ad_set
  belongs_to :target
  belongs_to :creative
  validates_presence_of :name
end
