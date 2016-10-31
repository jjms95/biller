class CreateCustomers < ActiveRecord::Migration[5.0]
	def change
    	create_table :customers do |t|
    		t.string :name, :about
    		t.integer :balance	
    		t.timestamps
   		end
	end
end
