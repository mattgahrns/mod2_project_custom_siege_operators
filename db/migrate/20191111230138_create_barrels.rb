class CreateBarrels < ActiveRecord::Migration[6.0]
  def change
    create_table :barrels do |t|
      t.string :name

      t.timestamps
    end
  end
end
