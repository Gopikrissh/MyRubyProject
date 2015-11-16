require 'rails_helper'

RSpec.describe "evaluations/new", type: :view do
  before(:each) do
    assign(:evaluation, Evaluation.new(
      :coach => nil,
      :player_tryout => nil,
      :rating => 1,
      :speed => 1,
      :shooting => 1,
      :passing => 1,
      :comment => "MyText"
    ))
  end

  it "renders new evaluation form" do
    render

    assert_select "form[action=?][method=?]", evaluations_path, "post" do

      assert_select "input#evaluation_coach_id[name=?]", "evaluation[coach_id]"

      assert_select "input#evaluation_player_tryout_id[name=?]", "evaluation[player_tryout_id]"

      assert_select "input#evaluation_rating[name=?]", "evaluation[rating]"

      assert_select "input#evaluation_speed[name=?]", "evaluation[speed]"

      assert_select "input#evaluation_shooting[name=?]", "evaluation[shooting]"

      assert_select "input#evaluation_passing[name=?]", "evaluation[passing]"

      assert_select "textarea#evaluation_comment[name=?]", "evaluation[comment]"
    end
  end
end
