require 'sinatra'

before do
 content_type :txt
end

get '/attachment' do
 attachment 'cookies.rb'
 "Here's what will be sent downstream in an attachment called 'cookies.rb'"
end
