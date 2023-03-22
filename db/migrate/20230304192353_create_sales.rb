class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.string :product
      t.string :employee
      t.date :date
      t.integer :price

      t.timestamps
    end
  end
end
