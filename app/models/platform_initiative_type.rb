class PlatformInitiativeType < ActiveRecord::Base
  include PlatformTransformer
  include PlatformTypeDefaults
  belongs_to :platform
  validates :name, presence: true

  def build_platform_initiative(source)
    target = PlatformInitiative.new(platform_initiative_type: self, initiative: source)
    transform(source, target)
    target
  end
end
