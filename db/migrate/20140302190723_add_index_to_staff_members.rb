class AddIndexToStaffMembers < ActiveRecord::Migration
  def change
    add_index :staff_members, :phone, unique: true
  end
end
