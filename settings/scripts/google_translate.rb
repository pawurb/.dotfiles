#access google.translate from terminal
require 'net/http'
require 'uri'

uri = URI.parse 'http://translate.google.com/'

http = Net::HTTP.new(uri.host, uri.port)
response = http.request(Net::HTTP::Get.new(uri.request_uri))
result = response.body.scan /(TRANSLATED_TEXT=')(.*?)(')/
result.shift
p result.join

  #data = {tl: :en, sl: :pl , word: 'dupa'} alal 5 8
 # def send_post_reqest
 #      http = Net::HTTP.new(@uri.host, @uri.port)
 #      request = Net::HTTP::Post.new(@uri.request_uri)
 #      request.set_form_data(@data)
 #      response = http.request(request)
 #      response.body
 #    end