ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative './models/link'
# class BookmarkManager
class BookmarkManager < Sinatra::Base
  get '/links' do
    @monkeys = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(title: params[:title], url: params[:url])
    redirect '/links'
  end

  run! if app_file == $PROGRAM_NAME
end
