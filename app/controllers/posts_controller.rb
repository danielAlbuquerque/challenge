class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :show]

  respond_to :html, :js, :json, :xml

  def index
    @posts = Post.paginate(page: params[:page], per_page: 5)
    respond_with(@posts)
  end

  def show
    @post.clicks += 1
    @post.save!
    respond_with(@post)
  end

  def new
    @categories = Category.order :description
    @post = Post.new
    @post.tags.build 
    respond_with(@post)
  end

  def edit
    @categories =  Category.order :description
  end

  def create
    @post = Post.new(post_params)
    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :slug, :post_text, :user_id, {category_ids: []}, tags_attributes: [:tag])
    end
end
