class CreateGadgets < ActiveRecord::Migration[6.0]
  def change
    create_table :gadgets do |t|
      t.string :name
      t.boolean :attacker

      t.timestamps
    end
  end
end
