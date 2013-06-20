enable :sessions  # is this necessary?


post '/sign_up' do
  User.create(:first_name => params[:first_name],
              :last_name => params[:last_name],
              :email => params[:email],
              :birthday => params[:birthday],
              :password => params[:password])

  erb :index
end

post '/logout' do
  session.clear
  erb :index
end

post '/login' do

  user = User.find_by_email(params[:email])

  if (user.email == params[:email] && user.password == params[:password])
    session[:user_id] = user.id
    erb :list_events
  else
    erb :index
  end
end