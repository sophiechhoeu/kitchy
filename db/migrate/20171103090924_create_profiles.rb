class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.text :business_address
      t.string :abn
      t.text :description

      t.timestamps
    end
  end
end
