class RenameTables < ActiveRecord::Migration[6.0]
  def change
    rename_table :posts_tables, :posts
    rename_table :tags_tables, :tags
  end
end
