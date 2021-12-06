# frozen_string_literal: true

require 'rails_helper'

describe Board, type: :model do
  describe '#validations' do
    let(:board) { build :board }
    it 'has a valid factory' do
      expect(board).to be_valid
    end

    describe 'validates the presence of a name' do
      let(:board) { build_stubbed :board, name: nil }
      it 'should not be valid' do
        expect(board).to_not be_valid
      end
    end
	end

	describe 'relationships' do
    let(:board) { build :board }

		it 'belongs to a User' do
			expect(board.user).to be_valid
		end
  end
end
