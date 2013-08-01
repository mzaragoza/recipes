class Users::TrucksController < UserController
  expose(:trucks){ current_account.trucks.order("id DESC").scoped{} }
  expose(:truck)
  expose(:comment) { truck.comments.new}

  def create
    if truck.save
      flash[:notice] = t(:truck_was_successfully_created)
      redirect_to(users_trucks_path)
    else
      render :new
    end
  end

  def update
    if truck.save
      flash[:notice] = t(:truck_was_successfully_updated)
      redirect_to(users_trucks_path)
    else
      render :edit
    end
  end
end

