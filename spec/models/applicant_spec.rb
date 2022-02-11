require 'rails_helper'

RSpec.describe Applicant, type: :model do
  it 'has a status' do
    app = Applicant.create!(
      name: 'Jerry',
      address_line_1: '123 First Street',
      city: 'Temecula',
      state: 'CA',
      zipcode: '12345',
      description: 'I want more pets.'
    )

    expect(app.status).to eq('In Progress')
  end

  describe 'relationships' do
    it { should have_many :pet_applications }
    it { should have_many(:pets).through(:pet_applications) }
  end
end
