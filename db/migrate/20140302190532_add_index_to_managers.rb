class AddIndexToManagers < ActiveRecord::Migration
  def change
    add_index :managers, :phone, unique:true
  end
end
