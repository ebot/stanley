class AddFavoriteToTrips < ActiveRecord::Migration
  def self.up
    add_column :trips, :favorite, :boolean
  end

  def self.down
    remove_column :trips, :favorite
  end
end
