class CreateTagsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tags_tables do |t|
      t.string :css
      t.string :unittests
      t.string :bugfix
      t.string :webdesign
    end
  end
end
