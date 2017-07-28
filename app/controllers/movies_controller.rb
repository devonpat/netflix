class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.creations.new(movie_params)
    respond_to do |format|
      if @movie.save
        format.js
      end
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def show
    @user = current_user
    @movie = Movie.find(params[:id])

  end

  def update
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      flash[:notice] = 'That movie sucked anyway'
      redirect_to users_show_path
    else
      flash[:alert] = 'Ha! It didn\'t get deleted!'
      redirect_to users_show_path
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :genre, :location_filmed, :length, :avatar)
  end
end

