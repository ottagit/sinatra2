require 'sinatra'

before do
 @before_val = 'chris'
end

get '/' do
 "before_val has been set to #{@before_val}"
end 

after do
 puts "After filter called to perform some task"
 @new_val = @before_val + " otta"
 puts "after_val is now #{@new_val}"
end
