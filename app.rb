class RedmartApp < Sinatra::Base

# ignore static pages
    get '/' do
      erb 'Hello World'
    end


#get restful esources
  get '/users' do
  @users = User.all
  erb :'users/index'
end

get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

end
