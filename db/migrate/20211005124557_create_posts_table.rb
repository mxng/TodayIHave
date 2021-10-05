class CreatePostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :posts_tables do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
    end
  end
end
