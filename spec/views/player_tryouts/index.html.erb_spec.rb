require 'rails_helper'

RSpec.describe "player_tryouts/index", type: :view do
  before(:each) do
    assign(:player_tryouts, [
      PlayerTryout.create!(
        :player => nil,
        :tryout => nil,
        :payment => 1
      ),
      PlayerTryout.create!(
        :player => nil,
        :tryout => nil,
        :payment => 1
      )
    ])
  end

  it "renders a list of player_tryouts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
