class CreateGrips < ActiveRecord::Migration[6.0]
  def change
    create_table :grips do |t|
      t.string :name

      t.timestamps
    end
  end
end
