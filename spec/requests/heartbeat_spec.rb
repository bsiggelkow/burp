require 'rails_helper'

describe 'Root request' do
  it 'renders a heatbeat page' do
    get '/'
    expected_vals = {
      hostname: Socket.gethostname.upcase,
      ip_address: Socket.ip_address_list.find { |ai| ai.ipv4? && !ai.ipv4_loopback? }.ip_address,
      environment: Rails.env,
      render_time: %r{Response took [0-9\.]+ seconds to generate}
    }
    expect(response).to render_template(:index)
    expected_vals.each do |_, value|
      expect(response.body).to match(value)
    end
  end
end