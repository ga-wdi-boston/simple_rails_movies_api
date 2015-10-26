class MoviesController < ApplicationController
  # TEMPORARY ONLY!!
  @@movies = [
      {name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123},
      {name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154},
      {name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105}
    ]


  # GET /movies
  def index
    render :json => @@movies.to_json
  end

  # GET /movies/:id
  def show
    id = params[:id].to_i
    render :json => @@movies[id]
  end

  # POST /movies
  def create
    @movie = movie_params['movie']
    @@movies << @movie
    # logger.debug("Movies are " + @@movies.inspect);
    render :json => @movie.to_json
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :rating, :desc, :length)
  end
end
