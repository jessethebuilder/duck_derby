require 'rails_helper'

describe 'Ducks Requests' do
  let(:duck){ build :duck }

  describe 'slugs' do
    specify 'A Duck should be findable by its parametrized name' do
      duck.name = 'A Special Name'
      duck.save!

      visit '/ducks/a-special-name'
      page.status_code.should == 200
      page.should have_content 'A Special Name'
    end
  end
end