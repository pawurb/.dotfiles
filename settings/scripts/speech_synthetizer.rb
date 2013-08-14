#encoding utf-8
#access google.translate from terminal
require 'net/http'
require 'uri'

class Translator

  def initialize(data = {})
    set_request_data data
  end

  def call
    response = send_request
    p response
    p response.body

    open("sample.mpeg", "wb") do |file|
        file.write(response.body)
    end
  end

  private


    def default_data
      {
        source_language: 'pl',
        target_language: 'en',
        text: 'gruba dupa siedzi w krzakach'
      }
    end

    def set_request_data data
      @data = default_data
      @data = @data.merge data
      url = "http://translate.google.pl/translate_tts?ie=UTF-8&q=%22Hrub%C3%BA%20prdel%20sed%C3%AD%20v%20krov%C3%AD%22&tl=sk&total=1&idx=0&textlen=26"
      @uri = URI.parse url
    end

    def send_request
      http = Net::HTTP.new(@uri.host, @uri.port)
      request = Net::HTTP::Post.new(@uri.request_uri)
      request.set_form_data(@data)
      response = http.request(request)
      response
    end

    def parse response
      text = response.body.scan(/(TRANSLATED_TEXT=')(.*?)(')/)
      encoding = response['content-type'].split('=')[1]
      { text: text.pop[1], encoding: encoding }
    end

end

user_options = Hash.new
user_options[:source_language] = ARGV[0] if ARGV[0]
user_options[:target_language] = ARGV[1] if ARGV[1]
user_options[:text] = ARGV.slice(2, ARGV.length - 1).join(' ') if ARGV[2]

Translator.new(user_options).call







