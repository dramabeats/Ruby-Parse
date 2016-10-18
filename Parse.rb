require 'net/http'
require 'open-uri'
#part of base library
open("http://s3.amazonaws.com/tcmg412/new+1?X-Amz-Date=20161018T195824Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=dac66a791f9794e9d97d67fe9340a2d2d35874db4896a2cb5eb35836a96a7fef&X-Amz-Credential=ASIAJA743WMMCR5U5M2A/20161018/us-east-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=FQoDYXdzEB0aDA0d0sI/pg1ilU1YwiL6AY3eUJ5hSOlCLSjY4g2WBwWfYJhpzolREH9GJD0CZVMwDZBXmlQReSXp%2BU9JH279gry2snMwddwQhWOZ5%2BLunN2LDM0LXFgZK4kCu9gOvhCTgyqUf4NV76jhBMI4q8zT7zRpv5CN9X3na8dHNAnfzHQjTOOrCMZVgmyqcQWBh7gWT8nXqTr2jqYBJ/idH60KAmN3srYq0mIw4am/MS19O5r5Q8LqDIxKuwX7eZpxiS0gR1G/YOWLWKvd0E%2BCxH5DRhuooT5Pun9QUz4WbMqf5v6599okll2Z69lkwboyh1/2BB6a1JbnALccF1in50vaAsXusOh6is3I0Vwo7/uZwAU%3D") {|f|
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

