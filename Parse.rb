require 'net/http'
require 'open-uri'
#part of base library
open("https://s3.amazonaws.com/tcmg412-fall2016/http_access_log") {|f|
  f.each_line {|line| p line}
}

 



file=http_access_log
count = 0
loop do
	/GET/.match(file)
	if /GET/.match = true then
		Count +=1
	end
end

