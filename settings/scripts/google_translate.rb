#access google.translate from terminal
require 'net/http'
require 'uri'

uri = URI.parse 'http://translate.google.com/'

p ARGV

data = { tl: 'en', sl: 'pl' , text: 'gruba dupa siedzi w krzakach'}
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri)
request.set_form_data(data)
response = http.request(request)


result = (response.body.scan /(TRANSLATED_TEXT=')(.*?)(')/)
p result
result = result.pop
p result[1]


 # result=$(curl -s -i --user-agent "" -d "sl=$source" -d "tl=$target" --data-urlencode "text=$1" http://translate.google.com)
