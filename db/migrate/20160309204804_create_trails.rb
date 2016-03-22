class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name, null: false
      t.integer :mountain_id, null: false
    end
  end
end
