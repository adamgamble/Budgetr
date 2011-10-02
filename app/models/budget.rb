class Budget < ActiveRecord::Base
  has_many :user_join_budgets
  has_many :account_join_budgets
  has_many :users, :through => :user_join_budgets
  has_many :accounts, :through => :account_join_budgets
  has_many :paychecks
end
