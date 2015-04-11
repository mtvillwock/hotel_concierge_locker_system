class AddEmptyToLockers < ActiveRecord::Migration
  def change
    add_column :lockers, :empty, :boolean, default: true
  end
end
