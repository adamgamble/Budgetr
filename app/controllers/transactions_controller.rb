class TransactionsController < ApplicationController

  def new
    @envelope = current_user.envelopes.find(params[:envelope_id])
  end

  def create
    @envelope = current_user.envelopes.find(params[:envelope_id])
    if !params["deposit"] && @envelope.balance < BigDecimal(params["transaction"]["amount"])
      flash[:error] = "You can't make a withdrawal greater than the envelope balance."
      render :action => :new
      return
    end
    transaction = @envelope.transactions.new(params[:transaction])
    transaction.user = current_user
    transaction.amount = transaction.amount * -1 unless params["deposit"]
    transaction.save
    flash[:notice] = "Transaction created"
    redirect_to account_envelope_path(@envelope.account, @envelope)
  end
end
