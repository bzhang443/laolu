require 'rails_helper'

RSpec.describe 'Customer API', type: :request do
  let!(:customers) {create_list(:customer, 10)}
  let(:email) {customers.first.email}

  describe 'GET /api/customer/get_info' do
    before { get '/api/customer/get_info' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns a customer' do
      expect(json).not_to be_empty
      expect(json['email']).to eq(email)
      expect(json['kick']).to eq(85)
    end
  end
end