class AccountsController < ApplicationController
	def index
		@accounts = Account.all
	end
	def show
		@account = Account.find(params[:id])
	end
	def destroy
		@account = Account.find(params[:id])
		if @account.destroy
			flash[:success] = "the account was deleted."
			redirect_to accounts_path
		else 
			flash[:error] = "has an error while deleting."
			render action: :new
		end
	end
	def new
		@account = Account.new
	end	
	def create 
		@account = Account.new(account_param)
		@account.type = "Customer"
		if @account.save
			flash[:success] = "the account was saved."
			redirect_to accounts_path
		else 
			flash[:error] = "has an error while saving."
			render action: :new
		end
	end

	private
	def account_param 
		params[:account].permit(:name, :type, :email, :about)
	end  
end
