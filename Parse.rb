require 'net/http'
require 'open-uri'

#Download file 
HTTPLOG=open ("http://s3.amazonaws.com/tcmg412/HTTPLOG") 

 
#Search file for "get" and count how many

count = 0
loop do
	line=HTTPLOG.readline

	if line =~ /GET/ then
		count +=1 
	end
	
	if HTTPLOG.eof then
		break
	end


end
print count
