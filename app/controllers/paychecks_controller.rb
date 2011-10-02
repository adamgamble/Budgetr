class PaychecksController < ApplicationController
  def new
  end

  def create
    paycheck = Paycheck.new(params[:paycheck])
    paycheck.budget = current_user.budgets.last
    paycheck.save
    flash[:notice] = "Paycheck created!"
    redirect_to "/dashboard"
  end

  def payout
    paycheck = Paycheck.find(params[:paycheck_id])
    paycheck.payout!
    flash[:notice] = "Payed out #{paycheck.name}"
    redirect_to "/dashboard"
  end
end
