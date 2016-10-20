require 'sinatra'
require 'uuid'

before do
 content_type :txt
 @guid = UUID.new.generate
end

get '/etag' do
 etag @guid
 "The resource has an etag value of #{@guid}"
#If-None-Match: * 
end
