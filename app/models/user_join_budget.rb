class UserJoinBudget < ActiveRecord::Base
  belongs_to :user
  belongs_to :budget
end
