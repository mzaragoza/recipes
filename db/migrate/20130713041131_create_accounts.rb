class CreateAccounts < ActiveRecord::Migration
  def up
    create_table(:accounts) do |t|
      t.string :name, :default => ''
      t.string :address, :default => ''
      t.string :address2, :default => ''
      t.string :city, :default => ''
      t.string :state, :default => ''
      t.string :zip, :default => ''
      t.string :phone, :default => ''
      t.boolean :active, :default => true
      t.string :website, :default => ''
      t.string :photo, :default => ''
      t.boolean :show_support, :default => true

      t.timestamps
    end
  end

  def down
    drop_table :accounts
  end

end

