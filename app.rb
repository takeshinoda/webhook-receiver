require 'sinatra'

$stdout.sync = true

post '/event' do
  puts "evt params: "
  p request.env
  puts request.body.read
  204
end

post '/command' do
  puts "cmd params: "
  puts request.body.read
  204
end

get '/' do
  'Hello world!'
end

