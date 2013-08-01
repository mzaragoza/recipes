class Users::AccountsController < UserController
  before_filter :check_user_level
  expose(:account) {current_account}

  def create
    if account.save
      flash[:notice] = t(:account_was_successfully_created)
      redirect_to(users_account_path(current_account))
    else
      render :new
    end
  end

  def update
    if account.update_attributes(params[:account])
      flash[:notice] = t(:account_was_successfully_updated)
      redirect_to(users_account_path(current_account))
    else
      render :edit
    end
  end
  private
  def check_user_level
    unless current_user.is_owner?
      flash[:error] = t(:access_denied)
      redirect_to(users_dashboard_path)
    end
  end
end

