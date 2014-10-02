class ChangeNameandAddPartnerId < ActiveRecord::Migration
 def up
  add_column :performances, :partner_id, :integer
  rename_column :performances, :name, :dancer
  end

  def down
  remove_column :performances, :partner_id
  end
end
