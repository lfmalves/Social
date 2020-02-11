# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
