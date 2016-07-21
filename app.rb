class RedmartApp < Sinatra::Base
    get '/' do
      erb 'Hello World'
    end

  get '/users' do

  @users = User.all

  erb :'users'
end

get '/aboutus' do
  erb 'ABOUT US'
end

end
