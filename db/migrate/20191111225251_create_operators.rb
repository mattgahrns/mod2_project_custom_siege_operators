class CreateOperators < ActiveRecord::Migration[6.0]
  def change
    create_table :operators do |t|
      t.string :name
      t.boolean :attacker
      t.integer :gadget_id
      t.integer :utility_id
      t.integer :user_id

      t.timestamps
    end
  end
end
