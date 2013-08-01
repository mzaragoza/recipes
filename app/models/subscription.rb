class Subscription < ActiveRecord::Base
  belongs_to :account
  belongs_to :plan
  attr_accessible  :account_id, :plan_id, :price, :name, :slug, :licenses, :subscriptions_type

end

