require 'rails_helper'

RSpec.describe "games/show", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :home_team => "Home Team",
      :home_score => "Home Score",
      :away_team => "Away Team",
      :away_score => "Away Score"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Home Team/)
    expect(rendered).to match(/Home Score/)
    expect(rendered).to match(/Away Team/)
    expect(rendered).to match(/Away Score/)
  end
end
