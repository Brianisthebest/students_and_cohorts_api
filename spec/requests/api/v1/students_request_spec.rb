require 'rails_helper'

RSpec.describe 'Students API' do
  it 'sends a list of students' do
    cohort = create(:cohort)
    create_list(:student, 5, cohort_id: cohort.id)

    get '/api/v1/students'

    expect(response).to be_successful

    students = JSON.parse(response.body, symbolize_names: true)

    expect(students[:data].count).to eq(5)

    students[:data].each do |student|
      expect(student).to have_key(:id)
      expect(student[:id]).to be_an(Integer)

      expect(student).to have_key(:first_name)
      expect(student[:first_name]).to be_a(String)
      
      expect(student).to have_key(:last_name)
      expect(student[:last_name]).to be_a(String)
      
      expect(student).to have_key(:preferred_name)
      expect(student[:preferred_name]).to be_a(String)
      
      expect(student).to have_key(:pronouns)
      expect(student[:pronouns]).to be_a(String)
      
      expect(student).to have_key(:email)
      expect(student[:email]).to be_a(String)
      
      expect(student).to have_key(:github_username)
      expect(student[:github_username]).to be_a(String)
      
      expect(student).to have_key(:slack_username)
      expect(student[:slack_username]).to be_a(String)
      
      expect(student).to have_key(:cohort_id)
      expect(student[:cohort_id]).to be_a(Integer)
    end
  end
end