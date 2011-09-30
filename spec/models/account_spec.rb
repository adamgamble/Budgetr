require 'spec_helper'

describe Account do
  describe "#balance" do
    account       = Account.new
    envelope      = account.envelopes.create(:name => "Savings")
    transaction   = envelope.transactions.create(:description => "Deposit from Check", :amount => BigDecimal("50.00"))
    account.balance.should == BigDecimal("50.00")
  end
end
