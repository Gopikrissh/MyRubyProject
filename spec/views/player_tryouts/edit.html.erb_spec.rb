require 'rails_helper'

RSpec.describe "player_tryouts/edit", type: :view do
  before(:each) do
    @player_tryout = assign(:player_tryout, PlayerTryout.create!(
      :player => nil,
      :tryout => nil,
      :payment => 1
    ))
  end

  it "renders the edit player_tryout form" do
    render

    assert_select "form[action=?][method=?]", player_tryout_path(@player_tryout), "post" do

      assert_select "input#player_tryout_player_id[name=?]", "player_tryout[player_id]"

      assert_select "input#player_tryout_tryout_id[name=?]", "player_tryout[tryout_id]"

      assert_select "input#player_tryout_payment[name=?]", "player_tryout[payment]"
    end
  end
end
