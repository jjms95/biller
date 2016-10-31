class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end
	def show
		@employee = Employee.find(params[:id])
	end
	def destroy
		@employee = Employee.find(params[:id])
		if @employee.destroy
			flash[:success] = "the account was deleted."
			redirect_to employees_path
		else 
			flash[:error] = "has an error while deleting."
			render action: :new
		end
	end
	def new
		@employee = Employee.new
	end	
	def create 
		@employee = Employee.new(employee_param)
		if @employee.save
			flash[:success] = "the employee was saved."
			redirect_to employees_path
		else 
			m=""
			@employee.errors.full_messages.each do |message|
      	 		m += message 
    		end
			flash[:error] = "has an error while saving the employee: #{m}." 
			render action: :new
		end
	end

	private
	def employee_param 
		params[:employee].permit(:name, :email)
	end  
end
