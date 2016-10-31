class EmployeesProyects < ActiveRecord::Migration[5.0]
  	def change
  		create_table :employees_proyects do |t|
  			t.belongs_to :employee, :proyect
  			t.timestamps
  		end
  	end
end
 