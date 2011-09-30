class Account < ActiveRecord::Base
  has_many :envelopes
  has_many :transactions, :through => :envelopes
  has_many :user_join_accounts
  has_many :users, :through => :user_join_accounts

  def balance
    transactions.sum(:amount)
  end
end
