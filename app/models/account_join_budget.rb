class AccountJoinBudget < ActiveRecord::Base
  belongs_to :account
  belongs_to :budget
end
