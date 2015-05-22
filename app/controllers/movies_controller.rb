class MoviesController < ApplicationController
  # TEMPORARY ONLY!!
  def movies
    [
      {name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123},
      {name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154},
      {name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105}
    ]
  end

  # GET /movies
  def index
    render :json => movies.to_json
  end

  # GET /movies/:id
  def show
    id = params[:id].to_i
    render :json => movies[id]
  end
end
