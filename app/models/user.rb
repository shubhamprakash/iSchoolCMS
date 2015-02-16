class User < ActiveRecord::Base
	has_one :role
	enum role: [:super_admin, :admin, :staff, :driver, :user]

	after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
