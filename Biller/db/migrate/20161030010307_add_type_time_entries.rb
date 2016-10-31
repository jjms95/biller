class AddTypeTimeEntries < ActiveRecord::Migration[5.0]
  def change
  	add_column :account_entries, :type, :string
  end
end
