class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :bill, index: true, foreign_key: true
      t.references :meal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
