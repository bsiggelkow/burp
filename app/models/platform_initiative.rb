class PlatformInitiative < ActiveRecord::Base
  belongs_to :initiative
  belongs_to :platform_initiative_type
end
