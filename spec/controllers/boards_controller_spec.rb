# frozen_string_literal: true

require 'rails_helper'

describe BoardsController, type: :request do
  describe '#index' do
    context 'with a successful request' do
      let(:user) { create :user }
      let!(:board) { create :board, user_id: user.id }

      before do
        get :index, params: { user_id: user.id }
      end

      it 'returns a successful response' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns a list of boards' do
        expect(json.length).to be(1)
      end
    end
  end

  describe '#show' do
    context 'with a successful request' do
      let(:user) { create :user }
      let(:board) { create :board, user_id: user.id }

      before do
        get :show, params: { user_id: user.id, id: board.id }
      end

      it 'returns a successful response' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns a single board' do
        expect(json_attributes['name']).to eq(board.name)
      end
    end
  end

  describe '#create' do
    let(:base_params) do
      {
        name: 'howdy'
      }
    end
    let(:params) { base_params }
    let(:user) { create :user }

    before do
      post :create, params: params.merge(user_id: user.id)
    end

    context 'with a valid request body' do
      it 'creates a board' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'with an invalid request body' do
      %i[
        name
      ].each do |key|
        context "when a request is missing the required field #{key}" do
          let(:params) { base_params.except(key) }

          it 'does not create a board' do
            expect(response).to have_http_status(:unprocessable_entity)
          end
        end
      end
    end
  end

  describe '#update' do
    let(:base_params) do
      {
        name: 'howdy'
      }
    end
    let(:user) { create :user }
    let(:board) { create :board }
    let(:params) { base_params }

    before do
      put :update, params: params.merge(user_id: user.id, id: board.id)
    end

    context 'with a valid request body' do
      it 'updates a board' do
        expect(response).to have_http_status(:no_content)
      end
    end

    context 'with an invalid request body' do
      %i[
        name
      ].each do |key|
        context "when a request is missing the required field #{key}" do
          let(:params) { base_params.except(key) }

          it 'does not create a board' do
            expect(response).to have_http_status(:unprocessable_entity)
          end
        end
      end
    end
  end
end
