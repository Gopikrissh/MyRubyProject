require 'rails_helper'

RSpec.describe "player_tryouts/show", type: :view do
  before(:each) do
    @player_tryout = assign(:player_tryout, PlayerTryout.create!(
      :player => nil,
      :tryout => nil,
      :payment => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
