# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
client = Client.create(
  name: 'King Burger', 
  contact: 'cmo@kingburger.com'
)
account = Account.create(
  name: 'King Burger Southeast', 
  client: client
)
initiative = Initiative.create(
  name: 'King Burger Clicks',
  description: 'Web site clicks', 
  account: account
)
ad_set = AdSet.create(
  name: 'KB Click ads',
  initiative: initiative 
)
target1 = Target.create(
  name: '18-25 males'
)
target2 = Target.create(
  name: 'Goldfish owners'
)
creative1 = Creative.create(
  name: 'Waltzing Matilda'
)
creative2 = Creative.create(
  name: 'Dancing Banana'
)
ad1 = Ad.create(
  name: 'KB Click ad 1',
  ad_set: ad_set,
  target: target1,
  creative: creative1
)
ad2 = Ad.create(
  name: 'KB Click ad 2',
  ad_set: ad_set,
  target: target2,
  creative: creative2
)
fakebook = Platform.create(
  name: 'Fakebook', 
  base_url: 'http://graph.fakebook.com', 
  features: '{"foo":"bar"}'
)
fwitter = Platform.create(
  name: 'Fwitter', 
  base_url: 'http://www.fwitter.com', 
  features: '{"baz":"buz"}'
)
platform_account_type = PlatformAccountType.create(
  name: 'Fakebook Ad Account', 
  platform: fakebook,
  endpoint: 'http://graph.fakebook.com/accounts/',
  schema: '{"title": "Example Schema", "type": "object", "properties": {"firstName": {"type": "string"}, "lastName": {"type": "string"}, "age": {"description": "Age in years", "type": "integer", "minimum": 0}}, "required": ["firstName", "lastName"]}',
  field_mapping: '{}'
)
platform_initiative_type = PlatformInitiativeType.create(
  name: 'Fakebook Web Site Clicks', 
  platform: fakebook,
  endpoint: 'http://localhost:8081/act_1/adcampaign_groups',  # Problem because this is account-specific 
  schema: '{"title": "Example Schema", "type": "object", "properties": {"firstName": {"type": "string"}, "lastName": {"type": "string"}, "age": {"description": "Age in years", "type": "integer", "minimum": 0}}, "required": ["firstName", "lastName"]}',
  field_mapping: [
    {
      source_field_info: 'name',
      target_field: 'name',
    },
    {
      source_field_info: 'name',
      target_field: 'features[name]',
    },
    {
      source_field_info: 'description',
      target_field: 'features[objective]',
    }
  ].to_json
)
platform_ad_type = PlatformAdType.create(
  name: 'Fakebook Basic Ad', 
  platform: fakebook,
  endpoint: nil,
  schema: '{}',
  field_mapping: [ # Maps Ad to Platform Ad 
    {
      source_field_info: 'name',
      target_field: 'name',
      transform: nil
    },
    {
      source_field_info: nil,
      target_field: 'features[bid_type]',
      transform: {value: 'Hard-Coded Bid Type'}
    },
    {
      source_field_info: 'creative.name',
      target_field: 'features[creative]',
      transform: nil
    },
    {
      source_field_info: 'target.name',
      target_field: 'features[targeting]',
      transform: {format: 'hello target: %{target__name}s'}
    },
    {
      source_field_info: ['creative.name','target.name'],
      target_field: 'features[tracking_specs]',
      transform: {module: 'Ad', callback: 'names_to_tracking_specs'}
    }
  ].to_json
)
platform_account = PlatformAccount.create(
  name: 'King Burger SE Fakebook',
  account: account,
  uri: 'http://localhost:8081/act_1',
  stats_uri: 'http://localhost:8081/act_1/stats',
  platform_account_type: platform_account_type
)
# platform_initiative = PlatformInitiative.create(
#   name: 'King Burger Fakebook clicks',
#   initiative: initiative,
#   uri: 'http://localhost:8081/act_1/',
#   platform_initiative_type: platform_initiative_type
# )
