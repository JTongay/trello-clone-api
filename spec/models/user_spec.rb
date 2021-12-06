# frozen_string_literal: true

require 'rails_helper'

describe User, type: :model do
  describe '#validations' do
    let(:user) { build_stubbed :user }
    it 'should have a valid factory' do
    	expect(user).to be_valid
		end

		describe 'should validate the presence of a username' do
  		let(:user) { build_stubbed :user, username: nil }

			it 'should not be valid' do
				expect(user).to_not be_valid
			end
		end

		describe 'should validate the presence of a password' do
			let(:user) { build_stubbed :user, password: nil }

			it 'should not be valid' do
				expect(user).to_not be_valid
			end
		end
  end
end
