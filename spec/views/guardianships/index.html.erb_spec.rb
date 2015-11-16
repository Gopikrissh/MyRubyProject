require 'rails_helper'

RSpec.describe "guardianships/index", type: :view do
  before(:each) do
    assign(:guardianships, [
      Guardianship.create!(
        :guardian => nil,
        :player => nil
      ),
      Guardianship.create!(
        :guardian => nil,
        :player => nil
      )
    ])
  end

  it "renders a list of guardianships" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
