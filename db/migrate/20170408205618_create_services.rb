class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :service_id
      t.string :user_id
      t.string :title
      t.string :description
      t.string :type, null: false         #offer, search
      t.string :availability, null: false #all, on weekends
      t.string :busy, array: true, default: []
    end
  end
end
