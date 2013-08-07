#access google.translate from terminal
require 'net/http'
require 'uri'

# result=$(curl -s -i --user-agent "" -d "sl=$source" -d "tl=$target" --data-urlencode "text=$1" http://translate.google.com)


class Translator

  def initialize(data = {})
    p ARGV
    set_data data
  end

  def call
    response = send_request
    p parse(response)
  end

  private


    def default_data
      {
        source_language: 'pl',
        target_language: 'en',
        text: 'gruba dupa siedzi w krzakach'
      }
    end

    def set_data data
      @data = default_data
      @data = @data.merge data
      url = "http://translate.google.com/?tl=#{@data[:target_language]}&sl=#{@data[:source_language]}"
      @uri = URI.parse url
    end

    def send_request
      http = Net::HTTP.new(@uri.host, @uri.port)
      request = Net::HTTP::Post.new(@uri.request_uri)
      request.set_form_data(@data)
      response = http.request(request)
    end

    def parse response
      result = response.body.scan /(TRANSLATED_TEXT=')(.*?)(')/
      result.pop[1]
    end

end




user_options = {}
user_options[:source_language] = ARGV[0]
user_options[:target_language] = ARGV[1]
# user_options[:text] = ARGV[2]



Translator.new(user_options).call






