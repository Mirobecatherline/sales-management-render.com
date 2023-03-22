class CreateSalesCs < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_cs do |t|
      t.string :product
      t.string :employee
       t.string :status
      t.date :date
      t.integer :price

      t.timestamps
    end
  end
end
