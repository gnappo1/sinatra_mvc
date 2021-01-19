class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :physicians do |t|
      t.string :name
      t.integer :age
      t.integer :experience
      t.timestamps
    end
  end
end
