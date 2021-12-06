# frozen_string_literal: true

require 'rails_helper'

describe BoardsController do
  describe '#index' do
    context 'with a successful request' do
      let!(:board) { create :board }

      before do
        get :index
      end

      it 'should return a successful response' do
        expect(response).to have_http_status(:ok)
      end

      it 'should return a list of boards' do
				pp json
        expect(json.length).to be(1)
      end
    end
  end
end
