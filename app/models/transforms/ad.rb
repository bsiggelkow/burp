module Transforms
  module Ad
    def self.names_to_tracking_specs(target__name:, creative__name:)
      "%s ~|~ %s" % [target__name, creative__name]
    end
  end
end
