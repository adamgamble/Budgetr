class Paycheck < ActiveRecord::Base
  has_many :paycheck_envelope_deposits
  belongs_to :budget

  def setup_envelope_deposit(envelope,envelope_deposit_amount)
    return false if amount < envelope_deposit_amount
    return false if (amount - paycheck_envelope_deposits.sum(:amount)) < envelope_deposit_amount
    paycheck_envelope_deposits.create(:envelope => envelope, :amount => envelope_deposit_amount)
  end

  def payout!
    paycheck_envelope_deposits.each do |ped|
      ped.envelope.transactions.create(:description => name, :amount => ped.amount)
    end
  end
end
