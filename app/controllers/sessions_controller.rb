class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user &&  @user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}")
    else
      flash.now[:danger] = 'Invalid email/password combination' 
      render("sessions/new")
    end
  end

  def destroy

  end
end
