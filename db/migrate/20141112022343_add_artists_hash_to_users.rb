class AddArtistsHashToUsers < ActiveRecord::Migration
  def change
    add_column :users, :artists_hash, :string
  end
end
