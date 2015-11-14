require 'rails_helper'

RSpec.describe "coaches/edit", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!())
  end

  it "renders the edit coach form" do
    render

    assert_select "form[action=?][method=?]", coach_path(@coach), "post" do
    end
  end
end
