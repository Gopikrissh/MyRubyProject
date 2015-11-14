require 'rails_helper'

RSpec.describe "coaches/index", type: :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(),
      Coach.create!()
    ])
  end

  it "renders a list of coaches" do
    render
  end
end
