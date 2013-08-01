class Api::Internal::V1::UsersController < ApiController
  expose(:users){ User.all }
  expose(:user){ User.find(params[:id]) }
  respond_to :json
  before_filter :check_api_key


  private
  def check_api_key
    unless params['api_key'] == ENV['INTERNAL_API_KEY']
      respond_with({:result => 'Invalid API Key'})
    end
  end
end
