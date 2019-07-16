require_relative 'config/environment'

class App < Sinatra::Base
  # renders the reverse.erb page
  get '/reverse' do
    erb :reverse
  end

  # receives that params hash from the form
  # (but does nothing with it) and renders the 
  # reversed.erb
  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse 

    erb :reversed
  end

  # renders the friends.erb page
  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end