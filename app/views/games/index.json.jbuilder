json.array!(@games) do |game|
  json.extract! game, :id, :home_team, :home_score, :away_team, :away_score
  json.url game_url(game, format: :json)
end
