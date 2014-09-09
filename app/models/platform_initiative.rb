class PlatformInitiative < ActiveRecord::Base

  include PlatformConnection

  before_create :create_remote_resource

  belongs_to :initiative
  belongs_to :platform_initiative_type
  validates :name, presence: true

  private

  def create_remote_resource
    if platform_initiative_type && platform_initiative_type.endpoint
      conn = connection(platform_initiative_type.endpoint)
      resp = conn.post do |req|
        req.body = {objective: initiative.description, name: name}.to_json
      end
      self.uri = "#{platform_initiative_type.endpoint}/#{remote_id(resp)}"
    end
  end

end
