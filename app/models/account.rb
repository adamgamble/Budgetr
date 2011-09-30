class Account < ActiveRecord::Base
  has_many :envelopes
  has_many :transactions, :through => :envelopes

  def balance
    transactions.sum(:amount)
  end
end
