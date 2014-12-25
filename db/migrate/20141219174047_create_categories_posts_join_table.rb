class CreateCategoriesPostsJoinTable < ActiveRecord::Migration
  def change
  	create_table :posts_categories, id: false do |t|
  		t.integer :post_id
  		t.integer :category_id
	end
  end
end
