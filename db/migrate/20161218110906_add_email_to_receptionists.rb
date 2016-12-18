class AddEmailToReceptionists < ActiveRecord::Migration[5.0]
  def change
    add_column :receptionists, :email, :string
  end
end
