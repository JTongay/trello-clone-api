# frozen_string_literal: true

require 'rails_helper'

describe BoardsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'users/1/boards').to route_to('boards#index', user_id: '1')
    end

    it 'routes to #show' do
      expect(get: 'users/1/boards/1').to route_to('boards#show', user_id: '1', id: '1')
    end

    it 'routes to #create' do
      expect(post: 'users/1/boards').to route_to('boards#create', user_id: '1')
    end

    it 'routes to #update' do
      expect(put: 'users/1/boards/1').to route_to('boards#update', user_id: '1', id: '1')
    end
  end
end
