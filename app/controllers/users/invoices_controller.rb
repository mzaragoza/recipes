class Users::InvoicesController < UserController
  expose(:invoices){ current_account.invoices.order("id DESC").scoped{} }
  expose(:invoice)
  expose(:comment) { invoice.comments.new}
  expose(:shipment) {
    if params[:shipment]
      current_account.shipments.find(params[:shipment])
    else
      false
    end
  }

  def create
    if invoice.save
      flash[:notice] = t(:invoice_was_successfully_created)
      redirect_to(users_invoices_path)
    else
      render :new
    end
  end

  def update
    if invoice.save
      flash[:notice] = t(:invoice_was_successfully_updated)
      redirect_to(users_invoices_path)
    else
      render :edit
    end
  end
  
  def pdf
    render :layout => 'invoice'
    #render :layout => false  
  end
end

