require 'rails_helper'

RSpec.describe "guardians/edit", type: :view do
  before(:each) do
    @guardian = assign(:guardian, Guardian.create!(
      :user => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => 1
    ))
  end

  it "renders the edit guardian form" do
    render

    assert_select "form[action=?][method=?]", guardian_path(@guardian), "post" do

      assert_select "input#guardian_user_id[name=?]", "guardian[user_id]"

      assert_select "input#guardian_first_name[name=?]", "guardian[first_name]"

      assert_select "input#guardian_last_name[name=?]", "guardian[last_name]"

      assert_select "input#guardian_email[name=?]", "guardian[email]"

      assert_select "input#guardian_phone[name=?]", "guardian[phone]"
    end
  end
end
