# frozen_string_literal: true

require 'rails_helper'

describe BoardsController, type: :routing do
	describe 'routing' do
		it 'routes to #index' do
			expect(get: 'boards').to route_to('boards#index')
		end
	end
end