class CreatePostTagsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :post_tags do |t|
      t.references :post, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
    end
  end
end
