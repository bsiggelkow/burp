module PlatformDefaults
  extend ActiveSupport::Concern
  included do
    after_initialize :defaults
  end
  private
  def defaults
    self.features ||= {}
  end
end