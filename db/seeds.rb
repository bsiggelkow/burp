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
platform_account = PlatformAccount.create(
  name: 'King Burger SE Fakebook',
  account: account,
  uri: 'http://graph.fakebook.com/accounts/',
  platform_account_type: platform_account_type
)