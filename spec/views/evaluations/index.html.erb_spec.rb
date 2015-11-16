require 'rails_helper'

RSpec.describe "evaluations/index", type: :view do
  before(:each) do
    assign(:evaluations, [
      Evaluation.create!(
        :coach => nil,
        :player_tryout => nil,
        :rating => 1,
        :speed => 2,
        :shooting => 3,
        :passing => 4,
        :comment => "MyText"
      ),
      Evaluation.create!(
        :coach => nil,
        :player_tryout => nil,
        :rating => 1,
        :speed => 2,
        :shooting => 3,
        :passing => 4,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of evaluations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
