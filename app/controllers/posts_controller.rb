class PostsController < ApplicationController
  before_action :set_blog, only: [:show]


  def index
    @posts = Post.all
  end

  def show

  end

  def new

  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end


  private

  def set_blog
    @post = Post.find(params[:id])
  end
end
