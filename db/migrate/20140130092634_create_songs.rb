class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :year
      t.integer :singer_id

      t.timestamps
    end
  end
end
