require 'net/http'
require 'open-uri'
#part of base library
open("http://s3.amazonaws.com/tcmg412/new+1") {|f|
  f.each_line {|line| p line}
}

 



file=New 1
count = 0
loop do
	/GET/.match(file)
	if /GET/.match = true then
		Count +=1
	end
end

