class AccountsController < ApplicationController

  def show
    @account = current_user.accounts.find_by_id params[:id]
  end
end
