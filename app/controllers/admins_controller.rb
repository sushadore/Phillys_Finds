class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:notice] = "You've created an admin account."
      session[:admin_id] = @admin.id
      redirect_to products_path
    else
      flash[:alert] = "There was a problem creating your account."
      redirect_to '/admin_signup'
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
