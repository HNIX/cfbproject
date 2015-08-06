class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :home_score
      t.string :away_team
      t.string :away_score

      t.timestamps
    end
  end
end
