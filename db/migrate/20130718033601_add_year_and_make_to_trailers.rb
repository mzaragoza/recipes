class AddYearAndMakeToTrailers < ActiveRecord::Migration
  def self.up
    add_column :trailers, :year_build, :string, :default => ''
    add_column :trailers, :manufacturer, :string, :default => ''
  end
  def self.down
    remove_column :trailers, :year_build
    remove_column :trailers, :manufacturer
  end
end
