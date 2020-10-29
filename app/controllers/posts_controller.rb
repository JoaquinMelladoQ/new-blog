class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def new
        @posts = Post.new
    end
    
    private
    def set_post
        @post = Post.find(params[:id])
    end
    
end