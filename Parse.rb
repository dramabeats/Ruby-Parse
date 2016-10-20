require 'net/http'
require 'open-uri'

#Download file 
HTTPLOG=open ("http://s3.amazonaws.com/tcmg412/testfile.txt") 

 
#Search file for "GET" and "POST" and count how many

requests = 0
redirects=0
unsuccessful=0
loop do
	line=HTTPLOG.readline

	if line =~ /GET|POST/ then
		requests +=1 
	end
	
	#search file for 3xx errors
	
	if line =~ /\D300\D|\D301\D|\D302\D|\D303\D|\D304\D|\D305\D|\D306\D|\D307\D|\D308\D/ then
		redirects +=1 
	end
	
	#Search file for 4xx errors
	
		if line =~ /\D400\D|\D401\D|\D402\D|\D403\D|\D404\D|\D405\D|\D406\D|\D407\D|\D408\D|\D409\D|\D410\D|\D411\D|\D411\D|
		\D412\D|\D413\D|\D414\D|\D415\D|\D416\D|\D417\D|\D418\D|\D421\D|\D422\D|\D423\D|\D424\D|\D426\D|\D428\D|\D429\D|\D431\D|\D451\D/ then
		unsuccessful +=1 
		end
	
	if HTTPLOG.eof then
		break
	end


end


#output results
puts "the total number of requests is" 
puts requests

puts "the total number of redirects is" 
puts redirects

puts "the total number of unsuccessful requests is" 
puts unsuccessful

puts requests/3.0