class AccountEntries < ActiveRecord::Migration[5.0]
  def change
  	add_column :time_entries, :account_id, :integer
  	rename_table :time_entries, :account_entries
  end
end
