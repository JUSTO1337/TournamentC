class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :n_part
      t.string :t_type
      t.string :category
      t.integer :user_id

      t.timestamps
    end
    add_index :tournaments, [:user_id, :created_at]

  end
end
