class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :personal_id
      t.string :email
      t.string :position
      t.integer :salary
      t.boolean :active
      t.string :starting_date

      t.timestamps
    end
  end
end
