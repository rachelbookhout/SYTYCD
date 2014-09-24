class AddVideoIDtoPerformance < ActiveRecord::Migration
  def up
  add_column :performances, :video_id, :string
  end

  def down
  remove_column :performances, :video_id
  end
end
