class CreatePaycheckEnvelopeDeposits < ActiveRecord::Migration
  def change
    create_table :paycheck_envelope_deposits do |t|
      t.integer :paycheck_id
      t.integer :envelope_id
      t.decimal :amount, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
