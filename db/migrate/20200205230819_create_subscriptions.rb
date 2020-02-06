class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :leader, null: false, foreign_key: false
      t.references :follower, null: false, foreign_key: false

      t.timestamps
    end
    add_foreign_key :subscriptions, :users, column: :leader_id # This is a quick fix, the book way isnt working
    add_foreign_key :subscriptions, :users, column: :follower_id # This is a quick fix, the book way isnt working
  end
end
