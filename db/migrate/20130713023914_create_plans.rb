class CreatePlans < ActiveRecord::Migration
  def up
    create_table :plans do |t|
      t.decimal :monthy_price
      t.decimal :yearly_price
      t.string :name, :default => ''
      t.string :slug, :default => ''
      t.boolean :featured, :default => false
      t.boolean :active, :default => true
      t.integer :licenses

      t.timestamps
    end
  end

  def down
    drop_table :plans
  end
end
