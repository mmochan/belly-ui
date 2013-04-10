class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :test

      t.timestamps
    end
  end
end
