class CreateProyects < ActiveRecord::Migration[5.0]
  def change
    create_table :proyects do |t|
      t.string :name
      t.integer :customer_id

      t.timestamps
    end
  end
end
