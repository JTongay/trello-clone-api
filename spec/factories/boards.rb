FactoryBot.define do
  factory :board do
		name { FFaker::BaconIpsum.word }

		association :user
  end
end
