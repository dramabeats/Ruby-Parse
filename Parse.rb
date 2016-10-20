require 'net/http'
require 'open-uri'

#Download file 
HTTPLOG=open ("http://s3.amazonaws.com/tcmg412/testfile.txt") 

 


requests = 0
redirects=0
unsuccessful=0
filenumbers = Hash.new(0)

#scan for most/least requested file 









loop do
	line=HTTPLOG.readline

	#Search file for "GET" and "POST" and count how many
	
	if line =~ /GET|POST/ then
		requests +=1 
	end
	
	#search file for 3xx errors and count how many
	
	if line =~ /\D300\D|\D301\D|\D302\D|\D303\D|\D304\D|\D305\D|\D306\D|\D307\D|\D308\D/ then
		redirects +=1 
	end
	
	#Search file for 4xx errors and count how many
	
		if line =~ /\D400\D|\D401\D|\D402\D|\D403\D|\D404\D|\D405\D|\D406\D|\D407\D|\D408\D|\D409\D|\D410\D|\D411\D|\D411\D|
		\D412\D|\D413\D|\D414\D|\D415\D|\D416\D|\D417\D|\D418\D|\D421\D|\D422\D|\D423\D|\D424\D|\D426\D|\D428\D|\D429\D|\D431\D|\D451\D/ then
		unsuccessful +=1 
		end
		
	findfile = line[/[a-zA-Z0-9]+\.[a-zA-Z1-9]+/]
		filenumbers [findfile] +=1
		
	
		
	
	if HTTPLOG.eof then
		break
	end


end


hashsorted = filenumbers.sort





#output results
puts "The total number of requests is" 
puts requests

puts "The total number of redirects is" 
puts redirects

puts "The total number of unsuccessful requests is" 
puts unsuccessful

puts "The average number of requests per week is about"
puts  requests/52.0

puts "The most requested file is"
puts hashsorted.max

puts "The lest requested file is"
puts hashsorted.min
