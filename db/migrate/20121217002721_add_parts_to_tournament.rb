class AddPartsToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :parts, :string
  end
end
