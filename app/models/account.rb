class Account < ActiveRecord::Base
  has_many :envelopes
  has_many :transactions, :through => :envelopes
  has_many :account_join_budgets
  has_many :budgets, :through => :user_join_budgets
  has_many :users, :through => :budgets

  def balance
    transactions.sum(:amount)
  end
end
