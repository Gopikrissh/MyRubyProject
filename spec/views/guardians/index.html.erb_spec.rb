require 'rails_helper'

RSpec.describe "guardians/index", type: :view do
  before(:each) do
    assign(:guardians, [
      Guardian.create!(
        :user => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => 1
      ),
      Guardian.create!(
        :user => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => 1
      )
    ])
  end

  it "renders a list of guardians" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
