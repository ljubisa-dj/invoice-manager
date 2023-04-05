class InvoicesController < ApplicationController
  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save
      flash[:notice] = "Invoice created successfully."
      redirect_to invoice_path(@invoice)
    else
      flash.now[:alert] = "Unable to create invoice."
      render :new
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to root_path
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  private

  def invoice_params
    params.require(:invoice).permit(:title, :amount, :is_paid)
  end
end
