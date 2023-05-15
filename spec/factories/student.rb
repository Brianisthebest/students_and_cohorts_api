FactoryBot.define do
  factory :student do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    preferred_name { Faker::Name.name }
    pronouns { 'he/him' }
    email { Faker::Internet.email }
    github_username { Faker::Internet.username }
    slack_username { Faker::Internet.username }
    cohort_id { Faker::Number.between(from: 1, to: 10) }
  end
end