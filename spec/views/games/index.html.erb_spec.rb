require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :home_team => "Home Team",
        :home_score => "Home Score",
        :away_team => "Away Team",
        :away_score => "Away Score"
      ),
      Game.create!(
        :home_team => "Home Team",
        :home_score => "Home Score",
        :away_team => "Away Team",
        :away_score => "Away Score"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Home Team".to_s, :count => 2
    assert_select "tr>td", :text => "Home Score".to_s, :count => 2
    assert_select "tr>td", :text => "Away Team".to_s, :count => 2
    assert_select "tr>td", :text => "Away Score".to_s, :count => 2
  end
end
