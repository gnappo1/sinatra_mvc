class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :datetime
      t.string :location
      t.references :patient, foreign_key: {on_delete: :cascade}
      t.references :physician, foreign_key: {on_delete: :cascade}
      t.boolean :scheduled, default: false
      t.timestamps
    end
  end
end
