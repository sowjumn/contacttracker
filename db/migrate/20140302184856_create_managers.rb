class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.string :email
      t.string :phone
    end

    add_index :managers, [:email], unique: true
  end
end
