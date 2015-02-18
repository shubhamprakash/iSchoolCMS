class UserPolicy 
  attr_reader :current_user, :role

  def initialize(current_user, role)
    @current_user = current_user
    @user = role
  end

  def index?
    @current_user.super_admin?
  end

  def create?
  @current_user.super_admin?
end

  def show?
    @current_user.super_admin? or @current_user == @user
  end

 def update?
    @current_user.super_admin?
 end

 def destroy?
   return false if @current_user == @user
    @current_user.super_admin?
 end

 def permitted_attributes
    if @current_user.super_admin?
      [:role]
    else
      [:name, :email]
    end
  end
end