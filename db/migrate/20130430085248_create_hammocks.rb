class CreateHammocks < ActiveRecord::Migration
  def change
    create_table :hammocks do |t|
      t.string :name
      t.integer :booking_id
      t.date :checkin
      t.date :checkout

      t.timestamps
    end
  end
end
