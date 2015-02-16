class User < ActiveRecord::Base
	has_one :role
	enum role: [:super_admin, :admin, :staff, :driver, :user]
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
