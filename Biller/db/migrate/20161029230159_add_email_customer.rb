class AddEmailCustomer < ActiveRecord::Migration[5.0]
  	def up
  		add_column :customers, :email, :string
  	end
  	def down
  		remove_column :customers, :email
  	end 
end
