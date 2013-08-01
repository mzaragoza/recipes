class UserController < ApplicationController
  expose(:current_account){ current_user.account }
  layout 'user_application'
  before_filter :check_user_active
  before_filter :check_unpaid_invoices
  private
    def check_user_active
      unless current_user.active
        flash[:notice]= t(:user_not_active)
        sign_out current_user
        redirect_to new_user_session_path
      end
    end
    def check_unpaid_invoices
      if current_account.invoices.count > 0
        if current_account.invoices.where(:paid_status => 'unpaid').where("created_at <= ?", Time.now - 30.days).count > 0
          flash[:error]= 'There are unpaid invoices over 30 days'
        end
      end
  end
end

