class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :mountain_id
    end
  end
end
