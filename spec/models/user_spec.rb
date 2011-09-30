require 'spec_helper'

describe User do
  describe "#net_worth" do
    it "should accurately calculate the users net worth" do
      user        = User.create(:email => "adamgamble@gmail.com", :password => "14931493", :password_confirmation => "14931493")
      account_1   = user.accounts.create(:name => "Wells Fargo")
      account_2   = user.accounts.create(:name => "Credit Union")
      envelope_1  = account_1.envelopes.create(:name => "Savings")
      envelope_2  = account_2.envelopes.create(:name => "Savings")
      envelope_1.transactions.create(:description => "Deposit into savings", :amount => BigDecimal("500"))
      envelope_2.transactions.create(:description => "Deposit into savings", :amount => BigDecimal("24"))
      user.net_worth.should == BigDecimal("524.00")
    end
  end
end
