class AccountsController < ApplicationController

  def show
    @account = current_user.accounts.find_by_id params[:id]
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.create(params["account"])
    current_user.budgets.last.accounts << @account
    flash[:notice] = "Account created!"
    redirect_to "/dashboard"
  end
end
