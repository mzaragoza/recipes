class Users::DriversController < UserController
  expose(:drivers){ current_account.drivers.order("id DESC").scoped{} }
  expose(:driver)
  expose(:comment) { driver.comments.new}

  def create
    if driver.save
      flash[:notice] = t(:driver_was_successfully_created)
      redirect_to(users_drivers_path)
    else
      render :new
    end
  end

  def update
    if driver.save
      flash[:notice] = t(:driver_was_successfully_updated)
      redirect_to(users_drivers_path)
    else
      render :edit
    end
  end
end

