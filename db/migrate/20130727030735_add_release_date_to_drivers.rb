class AddReleaseDateToDrivers < ActiveRecord::Migration
  def self.up
    add_column :drivers, :release_date, :string
  end
  def self.down
    remove_column :drivers, :release_date, :date_time
  end
end
