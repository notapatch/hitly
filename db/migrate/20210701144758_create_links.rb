class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.text :long_url, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
