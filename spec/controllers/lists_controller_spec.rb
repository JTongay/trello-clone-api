# frozen_string_literal: true

require 'rails_helper'

describe ListsController do
	describe '#index' do
		let(:board) { FactoryBot.build_stubbed :board }
		let(:list) { FactoryBot.build_stubbed :list }

		before do
			get :index, params: { board_id: board.id }
		end

		it 'should return a collection of lists' do
			expect(response).to have_http_status(:ok)
		end
	end
end
