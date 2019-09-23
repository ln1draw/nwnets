class AddEmailToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :suggestor_email, :string
  end
end
