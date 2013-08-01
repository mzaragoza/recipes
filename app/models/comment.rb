class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commenter, :polymorphic => true
  attr_accessible :note, :user_id
end
