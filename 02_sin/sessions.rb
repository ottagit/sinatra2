require 'sinatra'

configure do
 enable :sessions
end

before do
 content_type :txt
end

get '/set' do
 #store user session data in session collection
 session[:foo] = Time.now
 "Session value set."
end

get '/fetch' do
  "Session value: #{session[:foo]}"
end 
