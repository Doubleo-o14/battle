require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    "Hello!"
end

get '/secret' do
    "makers"
end

get '/ruby' do
    "progamming"
end

get '/cat' do
  "<div style = 'border: 6px solid red'>
  <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end
