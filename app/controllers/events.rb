post '/create_event' do

  user = User.find_by_email(params[:email])
  Event.create( :user_id => user.id,
                :name => params[:name],
                :location => params[:location],
                :starts_at => params[:start_time],
                :ends_at => params[:end_time])

  erb :index
end