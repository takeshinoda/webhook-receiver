require 'sinatra'

post '/webhook' do
  logger.info "params: (#{params.inspect})"
  204
end

get '/' do
  'Hello world!'
end

