class CreateSubscription < ActiveRecord::Migration
  def up
    create_table :subscriptions do |t|
      t.integer :account_id
      t.integer :plan_id
      t.decimal :price
      t.string :name, :default => ''
      t.string :slug, :default => ''
      t.string :subscriptions_type, :default => ''
      t.integer :licenses

      t.timestamps
    end
  end

  def down
    drop_table :subscriptions
  end
end
