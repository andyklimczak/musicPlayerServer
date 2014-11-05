class CreateArtistsUsers < ActiveRecord::Migration
  def change
    create_table :artists_users do |t|
      t.belongs_to :user
      t.belongs_to :artist
    end
  end
end
