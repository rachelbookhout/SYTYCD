class CreateDancers < ActiveRecord::Migration
  def change
    create_table :dancers do |t|
    t.string :full_name, null: false
      t.timestamps
    end
  end
end
