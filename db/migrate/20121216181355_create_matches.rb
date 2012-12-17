class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :result
      t.integer :tournament_id
      t.timestamps
    end
    add_index :matches, [:tournament_id, :created_at]
  end
end
