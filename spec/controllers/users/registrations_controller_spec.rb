# frozen_string_literal: true

require 'rails_helper'

describe Users::RegistrationsController, type: :request do
  describe '#create' do
    let(:user) { build :user }
    let(:existing_user) { create :user }
    let(:base_params) do
      {
        user: {
          email: user.email,
          password: user.password,
          username: user.username
        }
      }
    end
    let(:params) { base_params }
    let(:signup_url) { '/signup' }

    before do
      # @request.env['devise.mapping'] = Devise.mappings[:user]
      post signup_url, params: params
    end

    context 'with all of the required attributes present' do
      it 'registers a user' do
        expect(response).to have_http_status(:created)
      end

      it 'returns a token in the Authorization header' do
        expect(response.headers['Authorization']).to be_present
      end
    end

    context 'when an email already exists' do
      let(:params) do
        {
          user: {
            email: existing_user.email,
            password: existing_user.password,
            username: user.password
          }
        }
      end

      it 'returns a 422' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end

    context 'when a username already exists' do
      let(:params) do
        {
          user: {
            email: user.email,
            password: user.password,
            username: existing_user.username
          }
        }
      end

      it 'returns a 422' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
