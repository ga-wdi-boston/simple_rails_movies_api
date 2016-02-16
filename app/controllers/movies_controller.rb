class MoviesController < ApplicationController
  # GET /movies
  def index
    render :json => movies.to_json
  end

  # GET /movies/:id
  def show
    id = params[:id].to_i
    render :json => movies.find {|movie| movie[:id] == id}
  end

  private
  # TEMPORARY - ONLY FOR DEMONSTRATION!
  def movies
    [
      {id: 3, name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123},
      {id: 7, name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154},
      {id: 10, name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105}
    ]
  end
end
