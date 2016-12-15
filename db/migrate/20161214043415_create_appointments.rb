class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.date :ap_date
      t.time :ap_time
      t.references :receptionist, foreign_key: true

      t.timestamps
    end
  end
end
