require 'rails_helper'

RSpec.describe "guardians/edit", type: :view do
  before(:each) do
    @guardian = assign(:guardian, Guardian.create!())
  end

  it "renders the edit guardian form" do
    render

    assert_select "form[action=?][method=?]", guardian_path(@guardian), "post" do
    end
  end
end
