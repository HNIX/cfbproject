require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :home_team => "MyString",
      :home_score => "MyString",
      :away_team => "MyString",
      :away_score => "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_home_team[name=?]", "game[home_team]"

      assert_select "input#game_home_score[name=?]", "game[home_score]"

      assert_select "input#game_away_team[name=?]", "game[away_team]"

      assert_select "input#game_away_score[name=?]", "game[away_score]"
    end
  end
end
