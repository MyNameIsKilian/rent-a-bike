class RemoveStatutFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :statut, :boolean
  end
end
