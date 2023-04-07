class InvoicesController < ApplicationController
  def create
    @debtor = Debtor.new(debtor_params)
    @debtors = Debtor.all
    @invoice = @debtor.invoices.build(invoice_params)

    if @debtor.save
      redirect_to @invoice, notice: "Invoice was successfully created."
    else
      render :new
    end
  end

  def new
    @invoice = Invoice.new
    @debtor = Debtor.new
    @debtors = Debtor.all
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to root_path
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])
    if @invoice.update(invoice_params)
      redirect_to invoice_path(@invoice)
    else
      render :edit
    end
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  private

  def invoice_params
    params.require(:invoice).permit(:title, :amount, :is_paid, :description)
  end

  def debtor_params
    params.require(:debtor).permit(:name, :street, :city, :zip_code, :country)
  end
end
