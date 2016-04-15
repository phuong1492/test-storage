# require 'rest-client'
# request = RestClient::Request.new(
#   method: :post,
#   url: "https://api.parse.com/1/classes/newclass",
#   headers:
#     {
#       'Content-Type' => "application/json",
#       'X-Parse-Application-Id' => 'TrNq2jx9qLRbofrFbYoc9is3QTHgt6PVVsqR0EPb',
#       'X-Parse-REST-API-Key' => 'lejW5t3haDa6T8OKCtRKxN7AFX5pDcD87m5Kin2E'
#     }
# )
# response = request.execute
# puts response
require "net/http"
require "json"
require 'httparty'
# uri = URI('https://api.parse.com/1/classes/newclass')
# req = Net::HTTP::Post.new(uri, initheader =
#   {
#     'Content-Type' => "application/json",
#     'X-Parse-Application-Id' => 'TrNq2jx9qLRbofrFbYoc9is3QTHgt6PVVsqR0EPb',
#     'X-Parse-REST-API-Key' => 'lejW5t3haDa6T8OKCtRKxN7AFX5pDcD87m5Kin2E'
#   })
# req.body = {param1: 'some value', param2: 'some other value'}.to_json
# res = Net::HTTP.start(uri.host, uri.port) do |http|
#   http.request(req)
# end

HTTParty.post("https://api.parse.com/1/classes/newclass",
  {
    :body => { "amount" => "0.25", "platform" => "gittip"}.to_json,
    :headers => {
      'Content-Type' => "application/json",
      'X-Parse-Application-Id' => 'TrNq2jx9qLRbofrFbYoc9is3QTHgt6PVVsqR0EPb',
      'X-Parse-REST-API-Key' => 'lejW5t3haDa6T8OKCtRKxN7AFX5pDcD87m5Kin2E'
    }
   })
