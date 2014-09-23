class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :name, null: false
      t.string :partner, null:false
      t.string :song, null:false
      t.integer :season, null:false
      t.string :style, null:false
      t.integer :dancer_id, null:false
      t.string :url
      t.timestamps
    end
  end
end
