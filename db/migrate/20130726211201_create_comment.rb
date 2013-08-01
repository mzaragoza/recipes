class CreateComment < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.integer :commenter_id
      t.string :commenter_type
      t.text :note
      t.integer :user_id

      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
