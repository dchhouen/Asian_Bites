class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :post_id
      t.integer :influencer_id

      t.timestamps
    end
  end
end
