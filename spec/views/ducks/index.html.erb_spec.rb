require 'rails_helper'

RSpec.describe "ducks/index", type: :view do
  before(:each) do
    assign(:ducks, [
      Duck.create!(
        :name => "Name",
        :description => "MyText",
        :price => 1.5,
        :slug => "Slug",
        :pay_pal_email => "Pay Pal Email",
        :main_image => "Main Image"
      ),
      Duck.create!(
        :name => "Name",
        :description => "MyText",
        :price => 1.5,
        :slug => "Slug",
        :pay_pal_email => "Pay Pal Email",
        :main_image => "Main Image"
      )
    ])
  end

  it "renders a list of ducks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Pay Pal Email".to_s, :count => 2
    assert_select "tr>td", :text => "Main Image".to_s, :count => 2
  end
end
