class PlatformAd < ActiveRecord::Base
  belongs_to :ad
  belongs_to :platform_ad_type
  validates :name, presence: true

  after_initialize :defaults

  private

  def defaults
    self.features ||= {}
  end
end
