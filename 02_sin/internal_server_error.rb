require 'sinatra'

#use error block to handle unhandled exceptions

before do
 content_type :txt
end

configure do
 set :show_exceptions, true
end

get '/div_by_zero' do
 0/0
 "You won't see me!! Ng'ou :-)"
end

error do
 "Nini mbaya na wewe"
end
