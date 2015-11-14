require 'rails_helper'

RSpec.describe "tryouts/index", type: :view do
  before(:each) do
    assign(:tryouts, [
      Tryout.create!(
        :fee => "",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => 1
      ),
      Tryout.create!(
        :fee => "",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => 1
      )
    ])
  end

  it "renders a list of tryouts" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
