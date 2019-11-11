class CreateOperatorWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :operator_weapons do |t|
      t.integer :operator_id
      t.integer :weapon_id
      t.boolean :laser
      t.integer :sight_id
      t.integer :barrel_id
      t.integer :grip_id

      t.timestamps
    end
  end
end
