class InvoicesController < ApplicationController
  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save
      flash[:notice] = "Invoice created successfully."
      redirect_to invoices_path
    else
      flash.now[:alert] = "Unable to create invoice."
      render :new
    end
  end

  private

  def invoice_params
    params.require(:invoice).permit(:title, :amount, :is_paid)
  end
end
