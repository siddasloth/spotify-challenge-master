

# this is where you should use an ActiveRecord migration to

class SongList < ActiveRecord::Migration[5.0]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :songs do |t|
    	t.string :song_name
    	t. text :played_status

      # add columns that you would need for this table

      t.timestamps
    end
  end
end

