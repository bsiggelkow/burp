class PlatformInitiative < ActiveRecord::Base
  include PlatformDefaults
  include PlatformConnection

  after_create :create_remote_resource

  belongs_to :initiative
  belongs_to :platform_initiative_type
  validates :name, presence: true

  private

  def create_remote_resource
    if platform_initiative_type && platform_initiative_type.endpoint
      conn = connection(platform_initiative_type.endpoint)
      resp = conn.post do |req|
        req.body = features
      end
      self.uri = "#{platform_initiative_type.endpoint}/#{remote_id(resp)}"
      save!
    end
  end

end
