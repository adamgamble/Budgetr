class CreatePaychecks < ActiveRecord::Migration
  def change
    create_table :paychecks do |t|
      t.string :name
      t.decimal :amount, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
