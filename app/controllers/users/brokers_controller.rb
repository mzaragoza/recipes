class Users::BrokersController < UserController
  require 'csv'
  expose(:brokers){ current_account.brokers.order("id DESC").scoped{} }
  expose(:broker)
  expose(:comment) { broker.comments.new}

  def create
    if broker.save
      flash[:notice] = t(:broker_was_successfully_created)
      redirect_to(users_brokers_path)
    else
      render :new
    end
  end

  def update
    if broker.save
      flash[:notice] = t(:broker_was_successfully_updated)
      redirect_to(users_brokers_path)
    else
      render :edit
    end
  end


  def import
    puts params
    csv_text = File.read('public/brokers.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
        current_account.brokers.create!(row.to_hash)
    end
      flash[:notice] = t(:broker_was_successfully_created)
      redirect_to(users_brokers_path)
  end 
end

