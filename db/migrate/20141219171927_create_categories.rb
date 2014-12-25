class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :description, limit: 35, unique: true, null: false

      t.timestamps
    end
  end
end
