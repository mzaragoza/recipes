class CommentsController < ApplicationController
  expose(:comment)

  def create
    comment.commenter_id = params[:commenter_id]
    comment.commenter_type = params[:commenter_type]
    comment.user_id = current_user.id
    if comment.save
      flash[:notice] = t(:comment_has_been_added)
      if comment.commenter_type == 'driver'
        redirect_to users_driver_path(comment.commenter_id) + '#notes'
      elsif comment.commenter_type == 'trailer'
        redirect_to users_trailer_path(comment.commenter_id) + '#notes'
      elsif comment.commenter_type == 'truck'
        redirect_to users_truck_path(comment.commenter_id) + '#notes'
      elsif comment.commenter_type == 'user'
        redirect_to users_user_path(comment.commenter_id) + '#notes'
      elsif comment.commenter_type == 'broker'
        redirect_to users_broker_path(comment.commenter_id) + '#notes'
      elsif comment.commenter_type == 'shipment'
        redirect_to users_shipment_path(comment.commenter_id) + '#notes'
      elsif comment.commenter_type == 'invoice'
        redirect_to users_invoice_path(comment.commenter_id) + '#notes'
      elsif comment.commenter_type == 'receipt'
        redirect_to users_receipt_path(comment.commenter_id) + '#notes'
      elsif comment.commenter_type == 'repair'
        redirect_to users_repair_path(comment.commenter_id) + '#notes'
      end
    else
      render "new"
    end
  end
end
