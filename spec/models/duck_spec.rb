require 'rails_helper'

RSpec.describe Duck, type: :model do
  describe 'Validations' do
    it{ should validate_presence_of :name }
    it{ should validate_presence_of :paypal_email }
    it{ should validate_presence_of :price }

  end
end
