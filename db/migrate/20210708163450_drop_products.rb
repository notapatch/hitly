class DropProducts < ActiveRecord::Migration[6.1]
  def change
    drop_table "products", force: :cascade do |t|
      t.text "title", null: false
      t.text "description", null: false
      t.text "image_url", null: false
      t.decimal "price", precision: 8, scale: 2, null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["title"], name: "index_products_on_title", unique: true
      t.check_constraint "price >= 0.01", name: "price_must_be_positive"
    end
  end
end
