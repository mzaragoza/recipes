class ApiController < ActionController::Base
  private
  def check_api_key
    unless params['api_key'] == ENV['MOBILE_API_KEY']
      respond_with({:result => 'Invalid API Key'})
    end
  end
end
