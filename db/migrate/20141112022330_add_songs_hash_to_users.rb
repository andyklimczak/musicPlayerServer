class AddSongsHashToUsers < ActiveRecord::Migration
  def change
    add_column :users, :songs_hash, :string
  end
end
