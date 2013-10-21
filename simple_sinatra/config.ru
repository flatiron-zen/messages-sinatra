# config.ru

require 'sinatra'

get '/' do
  "Hello Sinatra!"
end


get '/hello/:name' do |n|
  "Hello #{n}"
end

get '/wildcard/*' do
  request.inspect
end

error 404 do
  "OMG, 404!"
end

get '/breakit' do
  500
end


run Sinatra::Application