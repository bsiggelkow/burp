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

class TestCreative
  attr :name
  def initialize
    @name = 'Test Creative'
  end
end

class TestTarget
  attr :name
  def initialize
    @name = 'Test Target'
  end
end

class TestSourceModel
  attr :name, :creative, :target
  def initialize
    @name = 'Test Source Model'
    @creative = TestCreative.new
    @target = TestTarget.new
  end
end

class TestPlatformModel
  attr_accessor :name, :features
  def initialize
    @name = ''
    @features = {}
  end
end

RSpec.describe PlatformTransformer, :type => :concern do
  subject { TestModel.new }
  it { is_expected.to respond_to(:field_mapping) }
  context 'transform' do
    let(:source) { TestSourceModel.new }
    let(:target) { TestPlatformModel.new }
    it 'should work' do
      subject.transform(source, target)
      expect(target.name).to eq(source.name)
      expect(target.features['bid_type']).to eq('Hard-Coded Bid Type')
      expect(target.features['creative']).to eq('Test Creative')
      expect(target.features['targeting']).to eq('hello target: Test Targets')
      expect(target.features['tracking_specs']).to eq('Test Target ~|~ Test Creative')
    end
  end
end