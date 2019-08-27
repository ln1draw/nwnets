class MakeLocationsGeocodeable < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :street, :text
    add_column :locations, :city, :text
    add_column :locations, :state, :text
    add_column :locations, :country, :text
  end
end
