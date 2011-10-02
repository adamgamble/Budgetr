class AddBudgetIdToPaycheck < ActiveRecord::Migration
  def change
    add_column :paychecks, :budget_id, :integer
  end
end
