class ChangeNameandAddPartnerId < ActiveRecord::Migration
 def up
  add_column :performances, :partner_id, :integer
end

  def down
  remove_column :performances, :partner_id
  end
end
