module SessionsHelper
  
  # 引数に渡されたユーザーオブジェクトでログインします。
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # 現在ログイン中のユーザーがいる場合オブジェクトを返します。
  def current_user
    if session[:user_id]
      @surrent_user ||= User.find_by(id:session[:user_id])
    end
  end
end
