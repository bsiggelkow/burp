class Campaign
  include Mongoid::Document

  field :name, type: String
  field :objective, type: String
  field :campaign_group_status, type: String
  field :buying_type, type: String

  include Mongoid::Timestamps

  validates :name, :presence => true
end
