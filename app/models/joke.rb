class Joke < ActiveRecord::Base
  attr_accessible :content, :credit

  validates_presence_of :content
end
