require 'rails_helper'

class TestModel
  include PlatformTransformer
  def field_mapping
    [ # Maps Ad to Platform Ad 
      {
        'source_field_info' => 'name',
        'target_field' => 'name',
        'transform' => nil
      },
      {
        'source_field_info' => nil,
        'target_field' => 'features[bid_type]',
        'transform' => {'value' => 'Hard-Coded Bid Type'}
      },
      {
        'source_field_info' => 'creative.name',
        'target_field' => 'features[creative]',
        'transform' => nil
      },
      {
        'source_field_info' => 'target.name',
        'target_field' => 'features[targeting]',
        'transform' => {'format' => 'hello target: %{target__name}s'}
      },
      {
        'source_field_info' => ['creative.name','target.name'],
        'target_field' => 'features[tracking_specs]',
        'transform' => {'module' => 'Ad', 'callback' => 'names_to_tracking_specs'}
      }
    ]
  end
end

RSpec.describe PlatformTransformer, :type => :concern do
  subject { TestModel.new }
  it { is_expected.to respond_to(:field_mapping) }
end