require 'sinatra'

get '/' do
  erb :index
end

post '/happy-birthday' do
  @name = params[:name]
  @day = params[:DOBDay]
  @month = params[:DOBMonth]
  erb :happy_birthday
end

post 'name' do
  redirect '/happy-birthday'
end
