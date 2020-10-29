class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end
    
    private
    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :description, :author, :status)
    end
    
end