class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :bio
      t.string :deposit

      t.timestamps
    end
  end
end
