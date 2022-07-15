# frozen_string_literal: true

require 'rails_helper'

describe ListsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'users/1/boards/1/lists').to route_to('lists#index', user_id: '1', board_id: '1')
    end
  end
end
