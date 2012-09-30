class JokesController < ApplicationController
  def random
    @joke = Joke.all.sample
  end
end
