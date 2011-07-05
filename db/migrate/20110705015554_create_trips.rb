class CreateTrips < ActiveRecord::Migration
  def self.up
    create_table :trips do |t|
      t.string :location
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :trips
  end
end
