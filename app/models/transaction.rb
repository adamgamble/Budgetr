class Transaction < ActiveRecord::Base
  belongs_to :envelope
  belongs_to :user
end
