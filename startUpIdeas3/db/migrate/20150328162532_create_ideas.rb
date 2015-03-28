class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.string :category
      t.text :tags

      t.timestamps
    end
  end
end
