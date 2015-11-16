require 'rails_helper'

RSpec.describe "guardianships/show", type: :view do
  before(:each) do
    @guardianship = assign(:guardianship, Guardianship.create!(
      :guardian => nil,
      :player => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
