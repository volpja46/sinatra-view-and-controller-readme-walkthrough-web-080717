require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    # Creating an instance variable in a controller method (route) lets the contents become 'visible' to the erb file to which it renders
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
     @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends

  end
end
