require 'sinatra'

get '/redirect' do
  redirect 'http://www.facebook.com'
end

get 'redirect2' do
  redirect 'http://www.gmail.com', 301
end
