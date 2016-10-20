require 'sinatra'

before do
 content_type :txt
end

#manual header setting
get '/manual_cache' do
 headers "Cache-Control" => "public, must-revalidate, max-age=3600",
         "Expires" => Time.at(Time.now.to_i + 3600).to_s
 "This page endered at #{Time.now}."
end
# caching using expires helper
get '/cache' do
 expires 3600, :public, :must_revalidate
 "This page rendered at #{Time.now}."
end
