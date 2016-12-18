class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :pat_name
      t.string :pat_gender 
      t.date :pat_dob
      t.text :pat_address

      t.timestamps
    end
  end
end
