class Users::ShipmentsController < UserController
  expose(:shipments){ current_account.shipments.order("id DESC").scoped{} }
  expose(:shipment)
  expose(:comment) { shipment.comments.new}

  def create
    if shipment.save
      flash[:notice] = t(:shipment_was_successfully_created)
      redirect_to(users_shipments_path)
    else
      render :new
    end
  end

  def update
    if shipment.save
      flash[:notice] = t(:shipment_was_successfully_updated)
      redirect_to(users_shipments_path)
    else
      render :edit
    end
  end
   def delete
     s = Shipment.find(params[:format])
     s.delete
      flash[:notice] = t(:shipment_was_successfully_deleted)
      redirect_to(users_shipments_path)
   end
end

