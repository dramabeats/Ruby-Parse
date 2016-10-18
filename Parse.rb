require 'net/http'
require 'open-uri'
#part of base library
open("http://drive.google.com/file/d/0B1nKMV6edDrtaVJ0WXF2Z0E3NG8/view?usp=sharing") {|f|
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

