require 'net/http'
require 'open-uri'

#Download file 
HTTPLOG=open ("http://s3.amazonaws.com/tcmg412/HTTPLOG") 

 
#Search file for "GET" and "POST" and count how many

count = 0
loop do
	line=HTTPLOG.readline

	if line =~ /GET|POST/ then
		count +=1 
	end
	
	if HTTPLOG.eof then
		break
	end


end

print count 

#search file for 3xx errors


loop do
	line=HTTPLOG.readline

	if line =~ /[3][0-9][0-9]/ then
		count +=1 
	end
	
	if HTTPLOG.eof then
		break
	end


end
