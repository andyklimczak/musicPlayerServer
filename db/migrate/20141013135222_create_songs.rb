class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title

      t.timestamps
    end
  end
end
