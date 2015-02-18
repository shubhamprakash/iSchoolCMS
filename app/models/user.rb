class User < ActiveRecord::
  Base
	has_one :role

  def self.search(query)
    where("first_name like ?", "%#{query}%") 
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ["Id","First Name", "Last Name", "Email","Address"]
      all.each do |user|
        csv << [user.id, user.first_name, user.last_name, user.email, user.address]
      end
    end
  end

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
