class StudentsController < ApplicationController
	def index
		@students = Student.all
	end 
	
	def show
		@student = Student.find(params[:id])
	end

	def new

	end

	def create 
		#render plain: params[:student].inspect
		@student = Student.new(params.require(:student).permit(:last, :first, :gpa, :date))

		@student.save
		redirect_to @student
	end
end
