post '/create_event' do

  user = User.find_by_email(params[:email])
  Event.create( :user_id => user.id,
                :name => params[:name],
                :location => params[:location],
                :starts_at => params[:start_time],
                :ends_at => params[:end_time])

  erb :index
end

post 'delete_event' do
  user = find_user_by_email(params[:email])
  event = find_event_by_user_id(user.id)
  event.destroy

  erb :index
end

post 'update_event' do
  user = find_user_by_email(params[:email])
  event = find_event_by_user_id(user.id)
  event.destroy

  erb :index
end