require 'sinatra'
require 'json'
require 'open-uri'

get '/', provides: :json do
  resp = open('http://api.atnd.org/events/?keyword=Dentoo.LT&format=json').read
  event = JSON[resp]['events'].first['event']
  JSON.pretty_generate(event)
end
