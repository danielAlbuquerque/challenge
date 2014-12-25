class CreateJoinTablePostsCategories < ActiveRecord::Migration
  def change
  	create_join_table :posts, :categories, column_options: {null: true} do |t|
  	end
  end
end
