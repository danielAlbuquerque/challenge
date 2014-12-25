class AddClicksToPost < ActiveRecord::Migration
  def change
    add_column :posts, :clicks, :integer, default: 0
  end
end
