class WelcomeController < ApplicationController
  def index
    @posts = Post.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
  end
end
