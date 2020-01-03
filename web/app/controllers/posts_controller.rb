class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :confirm_user, { only: [:edit, :update, :destroy] }

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = Post.find_by(id: @post.user_id)
    @likes_count = Like.where(post_id: @post_id).count
  end

  def create
    @post = Post.new(
        content: params[:content],
        user_id: @current_user.id,
        photo: params[:photo],
        star: params[:start],
        food_name: params[:food_name],
        address: params[:address]
    )

    if @post.save
      flash[:notice] = "post created"
      redirect_to("/posts/index")
    else
      render("/posts/new")
    end
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.photo= params[:photo ]
    @post.star= params[:star]
    @post.food_name= params[:food_name]

    if @post.save
      flash[:notice] = "edit #{@post.content}"
      redirect_to("/posts/index")
    else
      render("/posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "delete #{post.content}"
    redirect_to("/posts/index")
  end

  def confirm_user
    @post = Post.find_by(id: params[:id])
    if @post.user_id != @current_user.id
      flash[:notice] = "unauthorized"
      redirect_to("/posts/index")
    end
  end

end
