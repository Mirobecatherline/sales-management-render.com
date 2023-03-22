class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :shop
      t.bigint :contact

      t.timestamps
    end
  end
end
