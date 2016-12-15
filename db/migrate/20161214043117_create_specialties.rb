class CreateSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      t.string :sp_name
      t.text :sp_description

      t.timestamps
    end
  end
end
