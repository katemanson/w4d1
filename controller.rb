require('sinatra')
require('sinatra/contrib/all') if development? #?what's this?
require('json')
require('pry-byebug')
require_relative('./models/wordformatter')

get '/' do
  erb(:home)
end

#?don't think this can be right?
get '/address' do content_type(:json)
  address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  address[:postcode] = WordFormatter.new(address[:postcode]).upcase
  return address.to_json
end

get '/upper_camelcase/:string' do
  formatter = WordFormatter.new(params[:string])
  @upper_camelcase = formatter.upper_camelcase()
  erb(:camelcase)
end

