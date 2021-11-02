require 'sinatra'
require "sinatra/reloader" if development?
# Address for testing: http://localhost:4567

get '/' do
    "Hello!"
end

get '/secret' do
    "makers"
end

get '/ruby' do
    "progamming"
end

get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end

post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

get '/cat-nombre' do
    erb(:form)
end

