class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :category
      t.timestamp :created_at
      t.timestamp :modified_at
    end
  end
 
  def down
    drop_table :posts
  end
end
