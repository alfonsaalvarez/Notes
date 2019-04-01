class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by name: params[:username]
    if !@user
      flash.now.alert="username #{params[:username]} was invalid."
      render :new

    elsif @user.password == params[:password]
      session[:user]=@user.name
      session[:user_id]=@user.id
      session[:admin]=@user.admin

      redirect_to notes_path, :notice => "Logged in!"

    else
      flash.now.alert ="Invalid password"
      render :new
    end

#  session[:user]=@user.name
#	redirect_to notes_path, :notice => "Logged in!"

  end

  def destroy
	session[:user] = nil
  reset_session
	redirect_to :root, :notice => "Logged out!"
  end

  def session_params
    params.require(:user_id, :password, :admin).permit(:user)
  end
end
