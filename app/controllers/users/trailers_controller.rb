class Users::TrailersController < UserController
  expose(:trailers){ current_account.trailers.order("id DESC").scoped{} }
  expose(:trailer)
  expose(:comment) { trailer.comments.new}

  def create
    if trailer.save
      flash[:notice] = t(:trailer_was_successfully_created)
      redirect_to(users_trailers_path)
    else
      render :new
    end
  end

  def update
    if trailer.save
      flash[:notice] = t(:trailer_was_successfully_updated)
      redirect_to(users_trailers_path)
    else
      render :edit
    end
  end
end
