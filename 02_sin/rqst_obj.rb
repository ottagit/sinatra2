require 'sinatra'

before do
 content_type :txt
end
#iterating over all values in the @env var 
get '/' do
 request.env.map {|e| e.to_s + "\n"}
end
#enumerating methods on the request object
get '/request_methods' do
 request.methods.map {|method| method.to_s + "\n"}
end
