get "/login" do
    erb:"login"
end

get "/secret_login" do
    erb:"secret_login"
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

get "/student_home/:student_id" do
    @student = Student.find(session[:current_user_id])
    params[:student_id] = session[:current_user_id]
    erb:"student_home"
end