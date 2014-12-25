class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag, null: false, limit: 30
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
