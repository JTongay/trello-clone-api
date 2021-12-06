# frozen_string_literal: true

require 'rails_helper'

describe List, type: :model do
  describe '#validations' do
    let(:list) { build :list }
    it 'should have a valid factory' do
      expect(list).to be_valid
    end

    describe 'should validate the presence of a title' do
      let(:list) { build_stubbed :list, title: nil }
      it 'should not be valid' do
        expect(list).to_not be_valid
      end
    end
  end
end
