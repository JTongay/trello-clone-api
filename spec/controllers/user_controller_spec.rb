# frozen_string_literal: true

require 'rails_helper'

describe UsersController do
  describe '#index' do
    it 'should return a successful response' do
      expect(response).to have_http_status(:ok)
    end
  end
end
