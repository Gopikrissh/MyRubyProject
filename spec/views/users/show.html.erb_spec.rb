require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
  end
end
