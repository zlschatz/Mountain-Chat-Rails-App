class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :state, null: false
    end
  end
end
