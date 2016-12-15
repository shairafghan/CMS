class CreateReceptionists < ActiveRecord::Migration[5.0]
  def change
    create_table :receptionists do |t|
      t.string :rec_name

      t.timestamps
    end
  end
end
