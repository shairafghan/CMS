class CreateMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :medications do |t|
      t.string :md_name
      t.text :md_description

      t.timestamps
    end
  end
end
