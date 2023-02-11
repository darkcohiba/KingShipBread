class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :bread, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
