class CreateIdeasDistributions < ActiveRecord::Migration
  def change
    create_table :ideas_distributions do |t|
      t.string :industry

      t.timestamps
    end
  end
end
