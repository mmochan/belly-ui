class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :salutation
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.text :address
      t.string :suburb
      t.string :postcode
      t.text :special_requests

      t.timestamps
    end
  end
end
