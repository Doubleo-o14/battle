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
    @random_names = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end

get '/named-cat' do
    p params
    @random_names = params[:name]
    erb(:index)
end

