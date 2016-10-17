require 'sinatra'

['/one', '/two', 'three', '/four', '/five', '/six'].each do |route|

 get route do
  "Triggered via #{route}"
 end

 post route do
  "Triggered via #{route}"
 end

 put route do
  "Triggered via #{route}"
 end

 delete route do
  "Triggered via #{route}"
 end

 patch route do
  "Triggered via #{route}"
 end

 options route do
  "Triggered via #{route}"
end
end
