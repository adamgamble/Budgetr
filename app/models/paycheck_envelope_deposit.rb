class PaycheckEnvelopeDeposit < ActiveRecord::Base
  belongs_to :paycheck
  belongs_to :envelope
end
