class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :id_review
      t.integer :id_service
      t.integer :id_user_commented
      t.string  :description
      t.integer :grade
      t.timestamps
    end
    set_primary_key = "id_review"
  end
end
