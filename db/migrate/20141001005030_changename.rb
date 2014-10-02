class Changename < ActiveRecord::Migration
  def change
  rename_column :performances, :name, :dancer_name
  end
end
