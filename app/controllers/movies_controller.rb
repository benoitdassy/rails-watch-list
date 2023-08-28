class MoviesController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @movie = Movie.new(movie_params)
    @movie.save
    flash[:notice] = "Movie successfully created"
    redirect_to list_path(@list)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :rating, :image)
  end
end
