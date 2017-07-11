class AdminSessionsController < ApplicationController
  def create
    @admin = Admin.authenticate(params[:email], params[:password])
    if @admin
      flash[:notice] = "You're signed in."
      session[:admin_id] = @admin.id
      redirect_to products_path
    else
      flash[:alert] = "Email or password did not match. Please try again."
      redirect_to admin_signin_path
    end
  end

  def destroy
    session[:admin_id] = nil
    flash[:notice] = "You're signed out."
    redirect_to products_path
  end
end
