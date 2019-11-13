class AddSpeedAndArmorToOperator < ActiveRecord::Migration[6.0]
  def change
    add_column :operators, :speedarmor, :string
  end
end
