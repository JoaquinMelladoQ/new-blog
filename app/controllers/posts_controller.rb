class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path, notice: 'Post was successfully created.' 
        else
            flash.now[:alert] = 'Post cannot be created.'
            render :new
        end
    end
    
    private
    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :description, :author, :status)
    end
    
end