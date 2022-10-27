class Doctor < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :appointment
      t.string :specialty
      
      t.timestamps
    end
  end
end
