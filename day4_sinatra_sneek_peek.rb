# Note for the next time: Write things down you want to do the next time
require 'sinatra'
require 'json'

get '/' do

  p params

  'Hello world - get!'
end

post '/' do

  p params
  p JSON.parse request.body.read

  'Hello world - post!'
end