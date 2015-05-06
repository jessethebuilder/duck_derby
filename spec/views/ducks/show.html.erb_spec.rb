require 'rails_helper'

RSpec.describe "ducks/show", type: :view do
  before(:each) do
    @duck = assign(:duck, Duck.create!(
      :name => "Name",
      :description => "MyText",
      :price => 1.5,
      :slug => "Slug",
      :pay_pal_email => "Pay Pal Email",
      :main_image => "Main Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Pay Pal Email/)
    expect(rendered).to match(/Main Image/)
  end
end
