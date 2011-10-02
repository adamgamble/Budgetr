class DropTableUserJoinAccounts < ActiveRecord::Migration
  def up
    create_table :user_join_budgets do |t|
      t.integer :user_id
      t.integer :budget_id

      t.timestamps
    end
    create_table :account_join_budgets do |t|
      t.integer :account_id
      t.integer :budget_id

      t.timestamps
    end
    drop_table :user_join_accounts
  end

  def down
  end
end
