class RemovePostTags < ActiveRecord::Migration[6.0]
  def change
    drop_table :post_tags
  end
end
