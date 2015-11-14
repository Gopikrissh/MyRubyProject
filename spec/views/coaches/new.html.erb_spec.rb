require 'rails_helper'

RSpec.describe "coaches/new", type: :view do
  before(:each) do
    assign(:coach, Coach.new())
  end

  it "renders new coach form" do
    render

    assert_select "form[action=?][method=?]", coaches_path, "post" do
    end
  end
end
