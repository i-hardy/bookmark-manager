require 'sinatra/base'

class BOOKMARKS < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/links' do
    erb :links
  en

  run! if app_file == $0
end
