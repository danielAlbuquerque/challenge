class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, limit: 50, null: false
      t.string :slug, limit: 100, null: false, unique: true
      t.text :post_text, null: false
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
