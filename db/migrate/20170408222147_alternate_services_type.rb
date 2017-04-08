class AlternateServicesType < ActiveRecord::Migration[5.0]
  def change
    rename_column :services, :type, :reservation_type
  end
end
