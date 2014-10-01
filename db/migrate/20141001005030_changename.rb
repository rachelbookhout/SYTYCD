class Changename < ActiveRecord::Migration
  def change
  rename_column :performances, :dancer, :dancer_name
  end
end
