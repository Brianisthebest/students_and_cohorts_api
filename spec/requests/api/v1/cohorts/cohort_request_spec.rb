require 'rails_helper'

RSpec.describe 'Cohorts API' do
  it 'returns a single Cohort based of id' do
    cohort = create(:cohort)
    create_list(:student, 5, cohort_id: cohort.id)

    get api_v1_cohort_path(cohort)

    expect(response).to be_successful

    cohort = JSON.parse(response.body, symbolize_names: true)
  end
end