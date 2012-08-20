class JokesController < ApplicationController
  def index
    @jokes = Joke.scoped
  end

  def show
    @joke = Joke.find params[:id]
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.create(params[:joke])

    if @joke.persisted?
      redirect_to new_joke_path
    else
      render :new, status: 401
    end
  end
end
