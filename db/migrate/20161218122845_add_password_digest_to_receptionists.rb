class AddPasswordDigestToReceptionists < ActiveRecord::Migration[5.0]
  def change
    add_column :receptionists, :password_digest, :string
  end
end
