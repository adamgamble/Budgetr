class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :user_join_accounts
  has_many :accounts, :through => :user_join_accounts
  has_many :envelopes, :through => :accounts
  has_many :transactions, :through => :envelopes

  def net_worth
    transactions.sum(:amount)
  end
end
