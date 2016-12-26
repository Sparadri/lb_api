class User < ActiveRecord::Base
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, inclusion: { in: ['me@me.com', 'david@me.com'],
    message: "#{:email} is not a registered Le Barda email: please email us." }

end
