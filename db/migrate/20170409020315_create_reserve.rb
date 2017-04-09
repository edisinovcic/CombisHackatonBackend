class CreateReserve < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.integer :id_reserve
      t.integer :id_user
      t.float   :amount
      t.date    :date
      t.string  :status #accepted/in progress/declined
      t.timestamps
    end
  end
end
