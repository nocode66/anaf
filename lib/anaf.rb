require "anaf/version"
require 'net/http'
require 'uri'
require 'json'

module Anaf
  def self.cui(cui)
    uri = URI.parse("https://webservicesp.anaf.ro:/PlatitorTvaRest/api/v1/ws/tva")
    header = {'Content-Type' => 'application/json'}
    ask =  [{cui: cui.to_s, data: Time.now.strftime('%Y-%m-%d')}]
    # Create the HTTP objects
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = ask.to_json
    # Send the request
    response = http.request(request)
    data = JSON.parse(response.body)
  end
end