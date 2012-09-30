ActiveAdmin.register Joke do
  index do
    column :id
    column :content do |joke|
      joke.content.truncate 100
    end
    column :credit do |joke|
      joke.credit.truncate 30
    end
    default_actions
  end
end
