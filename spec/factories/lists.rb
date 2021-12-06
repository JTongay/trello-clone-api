FactoryBot.define do
  factory :list do
		title { FFaker::Book.title }
  end
end
