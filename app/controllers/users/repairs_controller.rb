class Users::RepairsController < UserController
  expose(:repairs){ current_account.repairs.order("id DESC").scoped{} }
  expose(:repair)
  expose(:comment) { repair.comments.new}

  def create
    if repair.save
      flash[:notice] = t(:repair_was_successfully_created)
      redirect_to(users_repairs_path)
    else
      render :new
    end
  end

  def update
    if repair.save
      flash[:notice] = t(:repair_was_successfully_updated)
      redirect_to(users_repairs_path)
    else
      render :edit
    end
  end
end

