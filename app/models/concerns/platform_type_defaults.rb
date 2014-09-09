module PlatformTypeDefaults
  extend ActiveSupport::Concern
  included do
    after_initialize :defaults
  end

  private

  def defaults
    self.schema ||= {}
    self.field_mapping ||= {}
  end
end