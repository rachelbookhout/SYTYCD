class Addfirstandlastname < ActiveRecord::Migration
  def up
  add_column :dancers, :first_name, :string
  add_column :dancers, :last_name, :string
  end

  def down
  remove_column :dancers, :first_name
  remove_column :dancers, :last_name
  end
end
