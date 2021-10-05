class RemoveColumnsFromTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :tags, :css, :string
    remove_column :tags, :unittests, :string
    remove_column :tags, :bugfix, :string
    remove_column :tags, :webdesign, :string
  end
end
