class ApplicationController < ActionController::Base
   # Prevent CSRF attacks by raising an exception.
   # For APIs, you may want to use :null_session instead.

   protect_from_forgery with: :exception

   before_action :require_login
   helper_method :form_url

   protected

    def form_url
      @_form_url
    end

    def set_form_url(url)
      @_form_url = url
    end 

    def preview
      @_preview = params[:preview].present?
    end

    def preview?
      !@_preview.nil?
    end

    def template_name
      @_preview ? File.join('preview', action_name) : action_name
    end

    private
  

    def require_login
      if session[:username]
      else
         render("session/new")
      end
    end  

end

#before_actionというメソッドを使うとすべてのコントローラーのアクションを実行する前に実行する
#アクションを指定することができる.
#ここではrequire_loginアクションを実行するように指定している.
#セッションにユーザ情報が保存されていない場合にログインページへ遷移させるアクションを作成する。(require_login) 
