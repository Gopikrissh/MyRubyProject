require 'rails_helper'

RSpec.describe "tryouts/edit", type: :view do
  before(:each) do
    @tryout = assign(:tryout, Tryout.create!(
      :fee => "",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1
    ))
  end

  it "renders the edit tryout form" do
    render

    assert_select "form[action=?][method=?]", tryout_path(@tryout), "post" do

      assert_select "input#tryout_fee[name=?]", "tryout[fee]"

      assert_select "input#tryout_address1[name=?]", "tryout[address1]"

      assert_select "input#tryout_address2[name=?]", "tryout[address2]"

      assert_select "input#tryout_city[name=?]", "tryout[city]"

      assert_select "input#tryout_state[name=?]", "tryout[state]"

      assert_select "input#tryout_zip[name=?]", "tryout[zip]"
    end
  end
end
