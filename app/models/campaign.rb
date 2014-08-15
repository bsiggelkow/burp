class Campaign < Couchbase::Model
  attribute :name
  attribute :objective
  attribute :campaign_group_status
  attribute :buying_type

  validates :name, :presence => true

  view :all
end
