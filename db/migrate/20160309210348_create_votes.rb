class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value, null: false
      t.integer :user_id, foreign_key: true, null: false
      t.integer :comment_id, foreign_key: true, null: false

      t.timestamps null: false

    end
  end
end
