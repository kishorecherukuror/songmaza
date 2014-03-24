class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :songs, :name , :song
  end
end
