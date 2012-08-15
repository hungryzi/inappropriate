class JokesController < ApplicationController
  def index
    @jokes = Joke.scoped
  end

  def show
    @joke = Joke.find params[:id]
  end
end
