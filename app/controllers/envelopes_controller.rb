class EnvelopesController < ApplicationController
  def new
    @account = current_user.accounts.find_by_id params[:account_id]
  end

  def create
  end

  def show
    @envelope = current_user.envelopes.find_by_id params[:id]
  end
end
