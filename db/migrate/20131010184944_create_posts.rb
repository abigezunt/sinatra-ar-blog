class CreatePosts < ActiveRecord::Migration

# This runs when you run the migration.
  def up
  	create_table :posts do |t|
      t.string :title
      t.text :body
      t.timestamps
  	end
  end

# This runs when you rollback/undo the migration.
  def down
  	drop_table :posts
  end

end
