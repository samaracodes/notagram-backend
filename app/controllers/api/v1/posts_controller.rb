class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all

    render json: PostSerializer.new(@posts)
  end

 
  def show
      @post = Post.find_by(id: params[:id])
      @user = user.post.find_by_id(params[:user_id])
      render json: PostSerializer.new(post)
  end


  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end


  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

 
  def destroy
    @post.destroy
  end

  private
    
    def set_post
      @post = Post.find_by(params[:id])
    end

    def post_params
      params.require(:post).permit(:image, :caption)
    end
end
