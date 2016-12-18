class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :doc_name
      t.integer :doc_office_no
      t.integer :doc_fee
      t.references :specialty, foreign_key: true

      t.timestamps
    end
  end
end
