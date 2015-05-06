require 'rails_helper'

RSpec.describe "ducks/edit", type: :view do
  before(:each) do
    @duck = assign(:duck, Duck.create!(
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :slug => "MyString",
      :pay_pal_email => "MyString",
      :main_image => "MyString"
    ))
  end

  it "renders the edit duck form" do
    render

    assert_select "form[action=?][method=?]", duck_path(@duck), "post" do

      assert_select "input#duck_name[name=?]", "duck[name]"

      assert_select "textarea#duck_description[name=?]", "duck[description]"

      assert_select "input#duck_price[name=?]", "duck[price]"

      assert_select "input#duck_slug[name=?]", "duck[slug]"

      assert_select "input#duck_pay_pal_email[name=?]", "duck[pay_pal_email]"

      assert_select "input#duck_main_image[name=?]", "duck[main_image]"
    end
  end
end
