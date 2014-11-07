class AddUserToInscription < ActiveRecord::Migration
  def change
    add_column :inscriptions, :user, :string
  end
end
