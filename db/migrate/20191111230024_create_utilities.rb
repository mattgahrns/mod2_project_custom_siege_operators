class CreateUtilities < ActiveRecord::Migration[6.0]
  def change
    create_table :utilities do |t|
      t.string :name
      t.boolean :attacker

      t.timestamps
    end
  end
end
