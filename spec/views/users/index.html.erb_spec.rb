require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :player_id => 1,
        :coach_id => 2,
        :guardian_id => 3,
        :first_name => "First Name",
        :last_name => "Last Name",
        :username => "Username",
        :email => "Email",
        :phone => 4,
        :gender => 5,
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => 6,
        :email => "Email",
        :phone => "Phone",
        :experience => "MyText"
      ),
      User.create!(
        :player_id => 1,
        :coach_id => 2,
        :guardian_id => 3,
        :first_name => "First Name",
        :last_name => "Last Name",
        :username => "Username",
        :email => "Email",
        :phone => 4,
        :gender => 5,
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => 6,
        :email => "Email",
        :phone => "Phone",
        :experience => "MyText"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
