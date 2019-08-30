class MenuController < ApplicationController
 def index 
  @user = User.find(params[:id])  
 end

# @userにUserテーブルからidをもとに情報を格納

end
