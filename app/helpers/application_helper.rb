module ApplicationHelper
	def signed_in?
		if session[:student_id].nil?
			return
		else
			@current_student = Student.find_by_id(session[:student_id])
		end
	end
	
	def empsigned_in?
		if session[:employer_id].nil?
			return
		else
			@current_employer = Employer.find_by_id(session[:employer_id])
		end
	end
		
	def calculate_age(birthday)
		Date.today.year - birthday.to_date.year
		end
		
	def human_boolean(boolean)
		boolean ? 'Yes' : 'No'	
	end

	def euro (amount)
		number_to_currency(amount, :unit => '€')
	end
	
	def url_with_protocol(url)
		/^http/i.match(url) ? url : "http://#{url}"
    end
	
	def jobduration(date2, date1)
		(date2.year * 12 + date2.month) - (date1.year * 12 + date1.month)
	end
end
