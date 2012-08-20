require 'spec_helper'

describe 'jokes/new' do
  subject do
    assign(:joke, Joke.new)
    render
    rendered
  end

  # it 'has a basic form' do
  #   should =~ /textarea .* name=.joke[content]./
  #   should =~ /input .* name=.joke[credit]./
  # end
end
