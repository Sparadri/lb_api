class User < ActiveRecord::Base

  after_initialize :default_values
  acts_as_token_authenticatable

  # Include default devise modules. Others available are: :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, inclusion: { in: ['me@me.com', 'david@me.com', 'test@me.com'],
    message: "#{:email} is not a registered Le Barda email: please email us." }

  # set "is_live" to false when first created if not specified
  def default_values
    # on product creation, is_live set to false by default
    self.admin ||= false
  end

end
