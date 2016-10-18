require 'net/http'
require 'open-uri'

#Download file 
open("http://s3.amazonaws.com/tcmg412/HTTPLOG") {|f|
  f.each_line {|line| p line}
}

 
#Search file for "get" and count how many
File = HTTPLOG
count = 0
loop do
	/GET/.match(file)
	if /GET/.match = true then
		Count +=1
	end

end

