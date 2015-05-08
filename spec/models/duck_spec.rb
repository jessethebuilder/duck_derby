require 'rails_helper'

RSpec.describe Duck, type: :model do
  describe 'Validations' do
    it{ should validate_presence_of :name }

    it{ should validate_presence_of :paypal_email }

    it{ should validate_presence_of :price }
    it{ should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  end

  describe 'Associations' do

  end
end
