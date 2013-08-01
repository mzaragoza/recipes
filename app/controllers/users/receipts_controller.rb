class Users::ReceiptsController < UserController
  expose(:receipts){ current_account.receipts.order("id DESC").scoped{} }
  expose(:receipt)
  expose(:comment) { receipt.comments.new}

  def create
    if receipt.save
      flash[:notice] = t(:receipt_was_successfully_created)
      redirect_to(users_receipts_path)
    else
      render :new
    end
  end

  def update
    if receipt.save
      flash[:notice] = t(:receipt_was_successfully_updated)
      redirect_to(users_receipts_path)
    else
      render :edit
    end
  end
end

