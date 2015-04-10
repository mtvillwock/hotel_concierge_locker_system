class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :bag_id
      t.integer :locker_id


      t.timestamps null: false
    end
  end
end
