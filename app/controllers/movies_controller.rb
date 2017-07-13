class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

  def edit
  end

  def show
    @user = current_user
  end

  def update
  end

  def destroy
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :genre, :location_filmed, :length)
  end
end

