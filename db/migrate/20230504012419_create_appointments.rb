class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.timestamps
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
    end
  end
end
