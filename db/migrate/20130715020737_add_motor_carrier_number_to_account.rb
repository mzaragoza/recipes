class AddMotorCarrierNumberToAccount < ActiveRecord::Migration
  def up
    add_column :accounts, :motor_carrier_number, :string, :default => ''
  end
  def down
    remove_column :accounts, :motor_carrier_number
  end
end
