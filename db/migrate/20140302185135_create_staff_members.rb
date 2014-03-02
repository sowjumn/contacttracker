class CreateStaffMembers < ActiveRecord::Migration
  def change
    create_table :staff_members do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :manager_id
    end

    add_index :staff_members, [:email], unique:true
  end
end
