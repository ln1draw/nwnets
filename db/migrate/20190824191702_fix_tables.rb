class FixTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :locations_tables

    add_column :locations, :name, :string
    add_column :locations, :blurb, :text
    add_column :locations, :citation, :string
    add_column :locations, :latitude, :float
    add_column :locations, :longitude, :float
    add_column :locations, :pretty_address, :string
    add_column :locations, :email_address, :email_suggestion

  end
end
