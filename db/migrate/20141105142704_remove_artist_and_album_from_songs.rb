class RemoveArtistAndAlbumFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :album, :string
    remove_column :songs, :artist, :text
  end
end
