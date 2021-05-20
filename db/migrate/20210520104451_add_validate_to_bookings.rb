class AddValidateToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :validate, :boolean, default: false
  end
end
