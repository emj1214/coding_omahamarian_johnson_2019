get "/home" do
  erb:"index"
end

get"/index" do
  erb:"index"
end

get "/students" do 
  @students = Student.all
  erb:"students"
end

get "/new_student" do
  erb:"new_student"
end

post "/adding_student" do
  if params[:student_name] != ""; params[:student_email] != ""
    @student = Student.create(name: params["student_name"], email: params["student_email"], grade: params["grade"])
    @student.save
    redirect to("/stuff_was_saved")
  else
    redirect to("stuff_wasn't_saved")
  end
end

get "/stuff_was_saved" do
  erb:"stuff_was_saved"
end

get "/stuff_wasn't_saved" do
  erb:"stuff_wasnt_saved"
end

get "/books" do 
  @books = Livre.all
  erb:"books"
end

get "/new_book" do 
  erb:"new_book"
end

post "/adding_book" do
  if params[:book_name] != ""; params[:book_link] != ""
    @book = Livre.create(title: params["book_name"], book_link: params["book_link"])
    @book.save
    redirect to("/stuff_was_saved")
  else
    redirect to("stuff_wasn't_saved")
  end
end

get "/assign" do
  @student = Student.all
  @books = Livre.all
  erb:"assign"
end

post "/assigning_books"do
  if params["book_title"] != ""
    @book = Livre.find_by title: params["book_title"]
  else 
    redirect to("stuff_wasn't_saved")
  end
  if params[:student_email1] != ""
    student_email = params[:student_email1]
    @student1 = Student.find_by email: student_email
    @student1.livres << @book
    @student1.save
    @book.save
  else 
    redirect to("stuff_wasnt_saved")
  end
  if params[:student_email2] != ""
    student_email = params[:student_email2]
    @student2 = Student.find_by email: student_email
    @student2.livres << @book
    @student2.save
    @book.save
  end
  if params[:student_email3] != ""
    student_email = params[:student_email3]
    @student3 = Student.find_by email: student_email
    @student3.livres << @book
    @student3.save
    @book.save
  end
  if params[:student_email4] != ""
    student_email = params[:student_email4]
    @student4 = Student.find_by email: student_email
    @student4.livres << @book
    @student4.save
    @book.save
  end
  if params[:student_email5] != ""
    student_email = params[:student_email5]
    @student5 = Student.find_by email: student_email
    @student5.livres << @book
    @student5.save
    @book.save
  end
  if params[:student_email6] != ""
    student_email = params[:student_email6]
    @student6 = Student.find_by email: student_email
    @student6.livres << @book
    @student6.save
    @book.save
  end
  if params[:student_email7] != ""
    student_email = params[:student_email7]
    @student7 = Student.find_by email: student_email
    @student7.livres << @book
    @student7.save
    @book.save
  end
  if params[:student_email8] != ""
    student_email = params[:student_email8]
    @student8 = Student.find_by email: student_email
    @student8.livres << @book
    @student8.save
    @book.save
  end
  if params[:student_email9] != ""
    student_email = params[:student_email9]
    @student9 = Student.find_by email: student_email
    @student9.livres << @book
    @student9.save
    @book.save
  end
  if params[:student_email10] != ""
    student_email = params[:student_email10]
    @student10 = Student.find_by email: student_email
    @student10.livres << @book
    @student10.save
    @book.save
  end
  if params[:student_email11] != ""
    student_email = params[:student_email11]
    @student11 = Student.find_by email: student_email
    @student11.livres << @book
    @student11.save
    @book.save
  end
  if params[:student_email12] != ""
    student_email = params[:student_email12]
    @student12 = Student.find_by email: student_email
    @student12.livres << @book
    @student12.save
    @book.save
  end
  if params[:student_email13] != ""
    student_email = params[:student_email13]
    @student13 = Student.find_by email: student_email
    @student13.livres << @book
    @student13.save
    @book.save
  end
  if params[:student_email14] != ""
    student_email = params[:student_email14]
    @student14 = Student.find_by email: student_email
    @student14.livres << @book
    @student14.save
    @book.save
  end
  if params[:student_email15] != ""
    student_email = params[:student_email15]
    @student15 = Student.find_by email: student_email
    @student15.livres << @book
    @student15.save
    @book.save
  end
  if params[:student_email16] != ""
    student_email = params[:student_email16]
    @student16 = Student.find_by email: student_email
    @student16.livres << @book
    @student16.save
    @book.save
  end
  if params[:student_email17] != ""
    student_email = params[:student_email17]
    @student17 = Student.find_by email: student_email
    @student17.livres << @book
    @student17.save
    @book.save
  end
  if params[:student_email18] != ""
    student_email = params[:student_email18]
    @student18 = Student.find_by email: student_email
    @student18.livres << @book
    @student18.save
    @book.save
  end
  if params[:student_email19] != ""
    student_email = params[:student_email19]
    @student19 = Student.find_by email: student_email
    @student19.livres << @book
    @student19.save
    @book.save
  end
  if params[:student_email20] != ""
    student_email = params[:student_email20]
    @student20 = Student.find_by email: student_email
    @student20.livres << @book
    @student20.save
    @book.save
  end
  redirect to("/stuff_was_saved")
end

get "/weekly_report" do
  @bookid = Bookid.all
  erb:"report"
end

get "/drop_student" do
  @student = Student.all
  erb:"drop_student"
end

post "/dropping_student"do
  if params[:student_email1] != ""
    student_email = params[:student_email1]
    @student1 = Student.find_by email: student_email
    student_id = @student1.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student1.destroy
    @student1.save
  end
  if params[:student_email2] != ""
    student_email = params[:student_email2]
    @student2 = Student.find_by email: student_email
    student_id = @student2.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student2.destroy
    @student2.save
  end
  if params[:student_email3] != ""
    student_email = params[:student_email3]
    @student3 = Student.find_by email: student_email
    student_id = @student3.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student3.destroy
    @student3.save
  end
  if params[:student_email4] != ""
    student_email = params[:student_email4]
    @student4 = Student.find_by email: student_email
    student_id = @student4.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student4.destroy
    @student4.save
  end
  if params[:student_email5] != ""
    student_email = params[:student_email5]
    @student5 = Student.find_by email: student_email
    student_id = @student5.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student5.destroy
    @student5.save
  end
  if params[:student_email6] != ""
    student_email = params[:student_email6]
    @student6 = Student.find_by email: student_email
    student_id = @student6.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student6.destroy
    @student6.save
  end
  if params[:student_email7] != ""
    student_email = params[:student_email7]
    @student7 = Student.find_by email: student_email
    student_id = @student7.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student7.destroy
    @student7.save
  end
  if params[:student_email8] != ""
    student_email = params[:student_email8]
    @student8 = Student.find_by email: student_email
    @student8.destroy
    @student8.save
  end
  if params[:student_email9] != ""
    student_email = params[:student_email9]
    @student9 = Student.find_by email: student_email
    student_id = @student9.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student9.destroy
    @student9.save
  end
  if params[:student_email10] != ""
    student_email = params[:student_email10]
    @student10 = Student.find_by email: student_email
    student_id = @student10.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student10.destroy
    @student10.save
  end
  if params[:student_email11] != ""
    student_email = params[:student_email11]
    @student11 = Student.find_by email: student_email
    student_id = @student11.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student11.destroy
    @student11.save
  end
  if params[:student_email12] != ""
    student_email = params[:student_email12]
    @student12 = Student.find_by email: student_email
    student_id = @student12.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student12.destroy
    @student12.save
  end
  if params[:student_email13] != ""
    student_email = params[:student_email13]
    @student13 = Student.find_by email: student_email
    student_id = @student13.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student13.destroy
    @student13.save
  end
  if params[:student_email14] != ""
    student_email = params[:student_email14]
    @student14 = Student.find_by email: student_email
    student_id = @student14.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student14.destroy
    @student14.save
  end
  if params[:student_email15] != ""
    student_email = params[:student_email15]
    @student15 = Student.find_by email: student_email
    student_id = @student15.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student15.destroy
    @student15.save
  end
  if params[:student_email16] != ""
    student_email = params[:student_email16]
    @student16 = Student.find_by email: student_email
    student_id = @student16.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student16.destroy
    @student16.save
  end
  if params[:student_email17] != ""
    student_email = params[:student_email17]
    @student17 = Student.find_by email: student_email
    student_id = @student17.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student17.destroy
    @student17.save
  end
  if params[:student_email18] != ""
    student_email = params[:student_email18]
    @student18 = Student.find_by email: student_email
    student_id = @student18.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student18.destroy
    @student18.save
  end
  if params[:student_email19] != ""
    student_email = params[:student_email19]
    @student19 = Student.find_by email: student_email
    student_id = @student19.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student19.destroy
    @student19.save
  end
  if params[:student_email20] != ""
    student_email = params[:student_email20]
    @student20 = Student.find_by email: student_email
    student_id = @student20.id
    bookids = Bookid.where(["student_id = ?", student_id])
    bookids.each do |bu|
      bu.destroy
    end
    @student20.destroy
    @student20.save
  end
  redirect to("/stuff_was_saved")
end

get "/drop_book" do
  @book = Livre.all
  erb:"drop_book"
end

post "/dropping_book" do
  if params[:book1] != ""
    book_id = params[:book1].to_i
    @book1 = Livre.find(params[:book1])
    livre_id = @book1.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book1.destroy
    @book1.save
  end
  if params[:book2] != ""
    book_id = params[:book2].to_i
    @book2 = Livre.find(params[:book2])
    livre_id = @book2.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book2.destroy
    @book2.save
  end
  if params[:book3] != ""
    book_id = params[:book3].to_i
    @book3 = Livre.find(params[:book3])
    livre_id = @book3.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book3.destroy
    @book3.save
  end
  if params[:book4] != ""
    book_id = params[:book4].to_i
    @book4 = Livre.find(params[:book4])
    livre_id = @book4.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book4.destroy
    @book4.save
  end
  if params[:book5] != ""
    book_id = params[:book5].to_i
    @book5 = Livre.find(params[:book5])
    livre_id = @book5.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book5.destroy
    @book5.save
  end
  if params[:book6] != ""
    book_id = params[:book6].to_i
    @book6 = Livre.find(params[:book6])
    livre_id = @book6.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book6.destroy
    @book6.save
  end
  if params[:book7] != ""
    book_id = params[:book7].to_i
    @book7 = Livre.find(params[:book7])
    livre_id = @book7.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book7.destroy
    @book7.save
  end
  if params[:book8] != ""
    book_id = params[:book8].to_i
    @book8 = Livre.find(params[:book8])
    livre_id = @book8.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book8.destroy
    @book8.save
  end
  if params[:book9] != ""
    book_id = params[:book9].to_i
    @book9 = Livre.find(params[:book9])
    livre_id = @book9.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book9.destroy
    @book9.save
  end
  if params[:book10] != ""
    book_id = params[:book10].to_i
    @book10 = Livre.find(params[:book10])
    livre_id = @book10.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book10.destroy
    @book10.save
  end
  if params[:book11] != ""
    book_id = params[:book11].to_i
    @book11 = Livre.find(params[:book11])
    livre_id = @book11.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book11.destroy
    @book11.save
  end
  if params[:book12] != ""
    book_id = params[:book12].to_i
    @book12 = Livre.find(params[:book12])
    livre_id = @book12.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book12.destroy
    @book12.save
  end
  if params[:book13] != ""
    book_id = params[:book13].to_i
    @book13 = Livre.find(params[:book13])
    livre_id = @book13.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book13.destroy
    @book13.save
  end
  if params[:book14] != ""
    book_id = params[:book14].to_i
    @book14 = Livre.find(params[:book14])
    livre_id = @book14.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book14.destroy
    @book14.save
  end
  if params[:book15] != ""
    book_id = params[:book15].to_i
    @book15 = Livre.find(params[:book15])
    livre_id = @book15.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book15.destroy
    @book15.save
  end
  if params[:book16] != ""
    book_id = params[:book16].to_i
    @book16 = Livre.find(params[:book16])
    livre_id = @book16.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book16.destroy
    @book16.save
  end
  if params[:book17] != ""
    book_id = params[:book17].to_i
    @book17 = Livre.find(params[:book17])
    livre_id = @book17.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book17.destroy
    @book17.save
  end
  if params[:book18] != ""
    book_id = params[:book18].to_i
    @book18 = Livre.find(params[:book18])
    livre_id = @book18.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book18.destroy
    @book18.save
  end
  if params[:book19] != ""
    book_id = params[:book19].to_i
    @book19 = Livre.find(params[:book19])
    livre_id = @book19.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book19.destroy
    @book19.save
  end
  if params[:book20] != ""
    book_id = params[:book20].to_i
    @book20 = Livre.find(params[:book20])
    livre_id = @book20.id
    bookids = Bookid.where(["livre_id = ?", livre_id])
    bookids.each do |bu|
      bu.destroy
    end
    @book20.destroy
    @book20.save
  end
  redirect to("/stuff_was_saved")
end

get "/students_only" do
  erb:"students_only"
end

get "/books_only" do
  erb:"books_only"
end

get "/dates_only" do
  erb:"dates_only"
end

get "/table" do
  erb:"table"
end