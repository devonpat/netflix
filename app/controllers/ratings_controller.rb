class RatingsController < ApplicationController
  def index
  end

  def new
    @rating = Rating.new
  end

  def create
    @user = current_user
    @movie = Movie.find(params[:rating][:movie_id])
    @rating = @user.ratings.new(rating_params)
    if @rating.save!
      flash[:notice] = 'Thanks for the Review'
    else
      flash[:alert] = 'nah, that did not work at all'
    end
    redirect_to @movie
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def rating_params
    params.require(:rating).permit(:stars, :review, :movie_id)
  end
end
