class AddDosageDurationToPrescribtionDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :prescribtion_details, :dosage, :string
    add_column :prescribtion_details, :duration, :string
  end
end
