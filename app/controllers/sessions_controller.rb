class SessionsController < ApplicationController
 
  def create
	student = Student.find_by_email(params[:email])
	if student && student.authenticate(params[:password])
		session[:student_id] = student.id
		student.update_attribute(:last_loggedin, Time.now)
		redirect_to student
	else
		flash.now[:error] = "invalid email/password combination"
		render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:student_id] = nil
	else	
		flash[:notice] = "You need to log in first"
	end
	redirect_to login_path
  end
  
  def new
  end
  
    def empcreate
	employer = Employer.find_by_email(params[:email])
	if employer && employer.authenticate(params[:password])
		session[:employer_id] = employer.id
		employer.update_attribute(:last_loggedin, Time.now)
		redirect_to employer
	else
		flash.now[:error] = "invalid email/password combination"
		render 'new'
	end
  end

  def empdestroy
	if empsigned_in?
		session[:employer_id] = nil
	else	
		flash[:notice] = "You need to log in first"
	end
	redirect_to login_path
  end
  
  def empnew
  end
  
end
