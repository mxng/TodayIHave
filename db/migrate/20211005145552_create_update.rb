class CreateUpdate < ActiveRecord::Migration[6.0]
  def change
    add_reference :updates, :post, null: false, foreign_key: true
    add_reference :updates, :tag, null: false, foreign_key: true
  end
end
