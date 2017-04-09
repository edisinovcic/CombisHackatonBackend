class CreateReserves < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.integer :id_reserve
      t.integer :id_user
      t.integer :id_service
      t.float   :amount
      t.string  :date
      t.string  :status
      t.timestamps
    end
  end
end
