class CreateReserves < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.string id_reserve
      t.string id_user
      t.float  amount
      t.date   date
      t.string status
      t.timestamps
    end
  end
end
