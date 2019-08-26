class CreateLocationsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :locations_tables do |t|
      t.string "name"
      t.text   "blurb"
      t.string "citation"
      t.float  "latitude"
      t.float  "longitude"
      t.string "pretty_address"
      t.string "email_address"
      t.text   "email_suggestion"
    end
  end
end
