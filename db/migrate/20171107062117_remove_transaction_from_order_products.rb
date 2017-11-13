class RemoveTransactionFromOrderProducts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :order_products, :transaction, foreign_key: true
  end
end
