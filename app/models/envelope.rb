class Envelope < ActiveRecord::Base
  has_many :transactions
  belongs_to :account

  def balance
    transactions.sum(:amount)
  end
end
