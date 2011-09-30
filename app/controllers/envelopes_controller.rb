class EnvelopesController < ApplicationController
  def new
    @account = current_user.accounts.find_by_id params[:account_id]
  end

  def create
    @account = current_user.accounts.find_by_id params[:account_id]
    @account.envelopes.create(params[:envelope])
    redirect_to account_path(@account)
  end

  def show
    @envelope = current_user.envelopes.find_by_id params[:id]
  end
end
