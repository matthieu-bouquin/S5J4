class Specialty < ActiveRecord::Migration[7.0]
  def change
    create_table :specialties do |tp|
    	tp.string :specialty
      tp.timestamps
    end
  end
end
