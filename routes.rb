get "/" do
    redirect to("/login")
end

get "/login" do
    erb:"login"
end

get '/authenticate' do
  # Request authorization
  redirect user_credentials.authorization_uri.to_s, 303
end

get '/authenticated' do
  # Exchange token with Google
  user_credentials.code = params[:code] if params[:code]

  # get access token
  user_credentials.fetch_access_token!

   # set user tokens into session
  set_user_session

  # use user tokens to request their profile information
  info_service = Google::Apis::Oauth2V2::Oauth2Service.new
  info = info_service.get_userinfo(options: { authorization: user_credentials.access_token })

  if Teacher.find_by(email: info.email) != nul
      user = Teacher.find_by(email: info.email)
  else 
      user = Student.find_by(email: info.email)
  end
  session[:current_user_id] = user.id
  
  redirect to('/home/:user_id')
end

def set_user_session
  session[:access_token] = user_credentials.access_token
  session[:refresh_token] = user_credentials.refresh_token
  session[:expires_in] = user_credentials.expires_in
  session[:issued_at] = user_credentials.issued_at
end

post "/logingin_student" do
    student_email = params[:email]
    @student = Student.find_by email: student_email
    if params[:password] = @student.password
        redirect to("/student_home/:student_id")
    end
    if params[:password] != @student.password
        redirect to("/login")
    end
    session[:current_user_id] = @student.id
end

get '/add_user' do
    erb:"adduser"
end

get "/home/:user_id" do
    @student = Student.find(session[:current_user_id])
    params[:student_id] = session[:current_user_id]
    erb:"student_home"
end