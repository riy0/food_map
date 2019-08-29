class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.new(name: params[:name], email: params[:email], image: "profile.png")
    if @user.save
      flash[:notice] = "create user"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

    if @user.save
      flash[:notice] = "edit user info"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

end
