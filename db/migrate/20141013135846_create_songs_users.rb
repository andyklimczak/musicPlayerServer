class CreateSongsUsers < ActiveRecord::Migration
  def change
    create_table :songs_users do |t|
    	t.belongs_to :user
    	t.belongs_to :song
    end
  end
end
