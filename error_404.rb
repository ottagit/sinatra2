require 'sinatra'

#server error
before do
 content_type :txt
end

not_found do
 "Sorry! You requested a route that wasn't available."
end
