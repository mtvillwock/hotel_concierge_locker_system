class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.string :size

      t.timestamps null: false
    end
  end
end
