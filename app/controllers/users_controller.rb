class UsersController < ApplicationController
  def index
  	@user = current_user
  	@movie = Movie.all
  end

  def show
  	@user = current_user
  	@movie = Movie.new
  end
end
