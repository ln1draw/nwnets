class Fixemail < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :email_address

    add_column :locations, :email_address, :string
    add_column :locations, :email_suggestion, :text
  end
end
