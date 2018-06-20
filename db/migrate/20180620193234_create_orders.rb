class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :payment_info, foreign_key: true
      t.string :payment_method

      t.timestamps
    end
  end
end
