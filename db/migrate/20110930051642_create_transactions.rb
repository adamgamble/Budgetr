class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :description
      t.decimal :amount, :precision => 10, :scale => 3
      t.integer :envelope_id
      t.integer :user_id

      t.timestamps
    end
  end
end
