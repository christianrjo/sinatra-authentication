get '/' do
  # render home page
 #TODO: Show all users if user is signed in
 @users = User.all
  erb :index
end

#----------- SESSIONS -----------

get '/sessions/new' do
  # render sign-in page 
  erb :sign_in
end

post '/sessions' do
  # sign-in
  user = User.find_by_email(params[:email])
  if user
  session[:user_id] = user.id
  redirect '/'
else
	erb :sign_in
  end
end

delete '/sessions/:id' do
  # sign-out -- invoked via AJAX
end

#----------- USERS -----------

get '/users/new' do
  # render sign-up page
  erb :sign_up
end

post '/users' do
  # sign-up a new user
  # puts '*'*80
  # p params
  user = User.new(email: params[:user][:email], name: params[:user][:name])
  user.password = params[:user][:password]

  # user= User.new(params[:user])
  # user.password = params[:password]

 if user.save
	session[:user_id] = user.id
 redirect '/'
else
	erb :sign_up #experiment with redirect as well
	f
 end

end
