class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :startnumber
      t.integer :competition
      t.string :time
      t.integer :rank
      t.integer :agegrouprank
      t.belongs_to :user

      t.timestamps
    end
  end
end
