module SessionsHelper
# 現在ログインしているユーザーを返す
  def  current_user
    if session[:user_id]
        @current_user = User.find_by(id:session[:user_id])
    end
  end
 # ユーザーがログインしていれば、ture,そうでなければfalseを返す
  def logged_in?
    !@current_user.nil?
  end
end
