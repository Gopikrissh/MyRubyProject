require 'rails_helper'

RSpec.describe "guardianships/new", type: :view do
  before(:each) do
    assign(:guardianship, Guardianship.new(
      :guardian => nil,
      :player => nil
    ))
  end

  it "renders new guardianship form" do
    render

    assert_select "form[action=?][method=?]", guardianships_path, "post" do

      assert_select "input#guardianship_guardian_id[name=?]", "guardianship[guardian_id]"

      assert_select "input#guardianship_player_id[name=?]", "guardianship[player_id]"
    end
  end
end
