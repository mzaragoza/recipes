class Users::DashboardsController < UserController
  expose(:trucks){ current_account.trucks.order("id DESC").scoped{} }
  expose(:drivers){ current_account.drivers.where(:active => true).order("id DESC").scoped{} }
end

