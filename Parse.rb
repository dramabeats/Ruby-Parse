require 'net/http'
require 'open-uri'

#Download file 
HTTPLOG=open ("https://s3.amazonaws.com/tcmg412-fall2016/http_access_log") 

 


requests = 0
redirects=0
unsuccessful=0
filenumbers = Hash.new(0)

#open files for each month

Jan = open("Jan.txt", "w") 
Feb = open("Feb.txt", "w") 
Mar = open("Mar.txt", "w") 
Apr = open("Apr.txt", "w") 
May = open("May.txt", "w") 
Jun = open("Jun.txt", "w")    
Jul = open("Jul.txt", "w") 
Aug = open("Aug.txt", "w") 
Sep = open("Sep.txt", "w") 
Oct = open("Oct.txt", "w")
Nov = open("Nov.txt", "w") 
Dec = open("Dec.txt", "w") 

Test = open("Test.txt", "w") 


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
		
	#regex to find filenames
	
	findfile = line[/[a-zA-Z0-9]+\.[a-zA-Z1-9]+/]
		filenumbers [findfile] +=1

		
		#Regex to find months and write entire line to relevant file
			
	if line =~ /Jan/ then
		Jan.syswrite(line)
	end
	
	if line =~ /Feb/ then
		Feb.syswrite(line)
	end
	
	if line =~ /Mar/ then
		Mar.syswrite(line)
	end
		
	if line =~ /Apr/ then
		Apr.syswrite(line)
	end
		
	if line =~ /May/ then
		May.syswrite(line)
	end
		
	if line =~ /Jun/ then
		Jun.syswrite(line)
	end
		
	if line =~ /Jul/ then
		Jul.syswrite(line)
	end
		
	if line =~ /Aug/ then
		Aug.syswrite(line)
	end
		
	if line =~ /Sep/ then
		Sep.syswrite(line)
	end
		
	if line =~ /Oct/ then
		Oct.syswrite(line)
	end
	
	if line =~ /Nov/ then
		Nov.syswrite(line)
	end
	
	if line =~ /Dec/ then
		Dec.syswrite(line)
	end
	
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

#close files
Jan.close
Feb.close
Mar.close
Apr.close
May.close
Jun.close
Jul.close
Aug.close
Sep.close
Oct.close
Nov.close
Dec.close