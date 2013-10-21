# app.rb

require 'sinatra'
require 'json'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'])

get '/' do
  @messages = Message.all
  erb :messages
end

get '/reset' do
  DataMapper.auto_migrate!
  "Messages reset!"
end

post '/' do
  
  # TODO: Read the message contents, save to the database
  
end

class Message
  
  # TODO: Use this class as a table in the database
  
end

DataMapper.finalize
