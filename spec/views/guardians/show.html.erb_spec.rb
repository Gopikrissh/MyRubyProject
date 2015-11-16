require 'rails_helper'

RSpec.describe "guardians/show", type: :view do
  before(:each) do
    @guardian = assign(:guardian, Guardian.create!(
      :user => nil,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/1/)
  end
end
