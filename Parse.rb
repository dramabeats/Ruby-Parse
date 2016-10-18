require 'net/http'
#part of base library
uri = URI('https://s3.amazonaws.com/tcmg412-fall2016/http_access_log')

Net::HTTP.start(uri.host, uri.port) do |http|
  request = Net::HTTP::Get.new uri

  response = http.request request # Net::HTTPResponse object
end
 



file=http_access_log
count = 0
loop do
	/GET/.match(file)
	if /GET/.match = true then
		Count +=1
	end
end

