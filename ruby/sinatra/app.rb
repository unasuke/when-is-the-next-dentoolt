require 'sinatra'

get '/', provides: :json do
  %({"date": "2017-06-04T04:30:00.000Z", "server": "ruby/sinatra"})
end
