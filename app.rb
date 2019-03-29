require 'sinatra'
require 'openssl'

$stdout.sync = true

post '/event' do
  body = request.body.read



  puts "evt params: "
  puts body
  puts OpenSSL::HMAC.hexdigest('sha256', 'dummy', 'https://takeshinoda-webhooker.herokuapp.com/event' + body)
  puts request.env['HTTP_X_MODE_SIGNATURE']
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

