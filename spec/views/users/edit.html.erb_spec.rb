require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :user => nil,
      :type => "",
      :first_name => "MyString",
      :last_name => "MyString",
      :username => "MyString",
      :email => "MyString",
      :phone => 1,
      :gender => 1,
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :email => "MyString",
      :phone => "MyString",
      :experience => "MyText"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_user_id[name=?]", "user[user_id]"

      assert_select "input#user_type[name=?]", "user[type]"

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_phone[name=?]", "user[phone]"

      assert_select "input#user_gender[name=?]", "user[gender]"

      assert_select "input#user_address1[name=?]", "user[address1]"

      assert_select "input#user_address2[name=?]", "user[address2]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_state[name=?]", "user[state]"

      assert_select "input#user_zip[name=?]", "user[zip]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_phone[name=?]", "user[phone]"

      assert_select "textarea#user_experience[name=?]", "user[experience]"
    end
  end
end
