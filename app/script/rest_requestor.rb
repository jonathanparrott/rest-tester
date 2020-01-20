require 'rest-client'

print "What action do you want to see? You can select 'index', 'show', 'new','edit', or 'create'."
answer = gets.chomp
url = "http://localhost:3000/users/"
  
case answer
when 'show'
  url << '1'
when 'new'
  url << 'new'
when 'edit'
  url << '1/edit'
else
  url
end

puts "GET: "
puts RestClient.get(url)

puts "POST: "
puts RestClient.post(url, "")


