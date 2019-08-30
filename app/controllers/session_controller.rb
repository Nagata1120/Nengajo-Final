class SessionController < ApplicationController
  skip_before_action :require_login  #sessionコントローラでもログイン要求(require_login)を無効にする
  def new #ログインページを表示
  end

  def index
  end

  def create  #ユーザ認証とセッションの保存
   #Userモデルからユーザ名、パスワードが一致するユーザを検索 nameからusernameに変更
   @user = User.find_by(username: params[:username], password: params[:password])

   #ユーザが検索されればセッションにユーザ情報を保存 user_nameからuser_usernameに変更
   #ユーザが見つからなければセッション情報を破棄(nil)
   if @user
     session[:username] = @user
     redirect_to controller: 'menu', action: 'index', id: @user.id    #メニュー画面へ画面遷移
   else
     session[:username] = nil
     redirect_to("/login") #ログインページへ画面遷移

   end
  end 

 def destroy	#セッション情報を破棄(ログアウト)
  session[:username] = nil
  redirect_to("/login")
 end

end
