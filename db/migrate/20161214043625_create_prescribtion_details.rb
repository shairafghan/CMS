class CreatePrescribtionDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :prescribtion_details do |t|
      t.references :prescribtion, foreign_key: true
      t.references :medication, foreign_key: true

      t.timestamps
    end
  end
end
