class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
    add_foreign_key :ideas, :users
    add_index :ideas, [:user_id, :created_at]
  end
end
