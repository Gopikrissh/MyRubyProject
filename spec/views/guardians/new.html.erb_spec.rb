require 'rails_helper'

RSpec.describe "guardians/new", type: :view do
  before(:each) do
    assign(:guardian, Guardian.new())
  end

  it "renders new guardian form" do
    render

    assert_select "form[action=?][method=?]", guardians_path, "post" do
    end
  end
end
