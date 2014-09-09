class PlatformAdType < ActiveRecord::Base
  include PlatformTransformer
  include PlatformTypeDefaults
  belongs_to :platform
  validates :name, presence: true

  def build_platform_ad(source)
    target = PlatformAd.new(platform_ad_type: self, ad: source)
    transform(source,target)
    target
  end

end
