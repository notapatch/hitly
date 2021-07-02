class AddHitCountsToLinks < ActiveRecord::Migration[6.1]
  def change
    add_column :links, :hit_counts, :integer, default: 0, null: false
  end
end
