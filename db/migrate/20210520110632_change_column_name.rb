class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :validate, :statut
  end
end
