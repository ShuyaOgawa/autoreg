class HomeController < ApplicationController
  
  def top
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/user/show")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      render("home/top")
    end
  end

end
