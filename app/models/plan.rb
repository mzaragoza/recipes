class Plan < ActiveRecord::Base
  #has_many :receipts
  has_one :subscription
  attr_accessible :price, :name, :slug, :featured, :active, :licenses, :anual_price, :monthy_price

end

