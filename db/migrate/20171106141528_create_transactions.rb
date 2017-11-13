class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :price
      t.string :stripe_transaction_id
      t.decimal :total_cost
      t.integer :buyer_user_id

      t.timestamps
    end
  end
end
