class UserController < ApplicationController

  def show
    @user = User.find_by(id: session[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    @user =  User.new(
      email: params[:email],
      password: params[:password]
    )
    p "aaaaaa"
    p @user
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/user/show")
    else
      render("user/new")
    end
  end

  def update
    @user = User.find_by(id: session[:user_id])
    @user.name1 = params[:name1]
    @user.name2 = params[:name2]
    @user.kana1 = params[:kana1]
    @user.kana2 = params[:kana2]
    @user.keitai1 = params[:keitai1]
    @user.keitai2 = params[:keitai2]
    @user.keitai3 = params[:keitai3]
    @user.sex = params[:sex]
    @user.birthY = params[:birthY]
    @user.birthM = params[:birthM]
    @user.birthD = params[:birthD]
    @user.postal1 = params[:postal1]
    @user.postal2 = params[:postal2]
    @user.prefecture = params[:prefecture]
    @user.city = params[:city]
    @user.apartment = params[:apartment]
    @user.save
    redirect_to("/user/show")
  end

  def index
    @user = User.all
  end




end
