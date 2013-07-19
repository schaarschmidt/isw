class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :startnumber
      t.string :firstname
      t.string :lastname
      t.integer :year_of_birth
      t.integer :gender
      t.string :agegroup
      t.string :club

      t.timestamps
    end
  end
end
