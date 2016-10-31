class CreateTimeEntries < ActiveRecord::Migration[5.0]
	def change
    	create_table :time_entries do |t|
    		t.belongs_to :employee
    		t.belongs_to :customer
    		t.float :time
      		t.timestamps
    	end
  	end
end
