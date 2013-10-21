# post_message.rb

require "net/http"
require "uri"

puts ""
print "Who do you want to message? "
to = gets.chomp

print "Who are you? "
from = gets.chomp

print "What's your email? "
email = gets.chomp.downcase

print "Your message: "
content = gets.chomp

puts ""
print "Sending message..."

uri = URI("http://localhost:3000/")

params = { :to => to, :from => from, :email => email, :content => content }

response = Net::HTTP.post_form(uri, params)

if response.body == "success"
  puts "done!"
else
  puts "Oops, something went wrong :("
end

puts ""
