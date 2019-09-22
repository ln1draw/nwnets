class AddPendingToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :pending, :boolean, default: true
  end
end
