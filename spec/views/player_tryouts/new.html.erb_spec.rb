require 'rails_helper'

RSpec.describe "player_tryouts/new", type: :view do
  before(:each) do
    assign(:player_tryout, PlayerTryout.new(
      :player => nil,
      :tryout => nil,
      :payment => 1
    ))
  end

  it "renders new player_tryout form" do
    render

    assert_select "form[action=?][method=?]", player_tryouts_path, "post" do

      assert_select "input#player_tryout_player_id[name=?]", "player_tryout[player_id]"

      assert_select "input#player_tryout_tryout_id[name=?]", "player_tryout[tryout_id]"

      assert_select "input#player_tryout_payment[name=?]", "player_tryout[payment]"
    end
  end
end
