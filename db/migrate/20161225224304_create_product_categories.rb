class CreateProductCategories < ActiveRecord::Migration
  def change
    # table for many to many relationships
    create_table :product_categories do |t|
      t.references :product, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
