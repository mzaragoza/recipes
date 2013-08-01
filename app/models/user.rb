class User < ActiveRecord::Base
  belongs_to :account
  has_many :comments
  has_many :comments, :as => :commenter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :photo, :phone, :active, :is_owner, :is_primary, :account_id, :plan_slug, :account_attributes, :subscriptions_type

  validates_uniqueness_of :email
  validates_presence_of :password, :if => :should_validate_password?

  attr_accessor :updating_password
  attr_accessor :plan_slug
  attr_accessor :subscriptions_type
  accepts_nested_attributes_for :account
  mount_uploader :photo, PhotoUploader

  def name
    full_name
  end

  def full_name
    first_name + ' ' + last_name
  end
  def should_validate_password?
      updating_password || new_record?
  end
end

